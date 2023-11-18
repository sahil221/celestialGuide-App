// import 'dart:async';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:dartz/dartz.dart';

// import '../../domain/auth/auth_repository.dart';
// import '../../domain/core/constants/collection_constants.dart';
// import '../../domain/core/constants/string_constants.dart';
// import '../dto/user/user_dto.dart';

// class IAuthRepository extends AuthRepository {
//   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
//   final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
//   Completer<bool>? completer;
//   FirebaseAuthException? _verifyPhoneException;
//   String? _verificationCode;
//   @override
//   Future<UserDto?> authenticateUser() async {
//     try {
//       User? user = FirebaseAuth.instance.currentUser;
//       if (user == null) {
//         final completer = Completer<User?>();
//         FirebaseAuth.instance.authStateChanges().listen((loggedInUser) {
//           if (loggedInUser != null) {
//             completer.complete(loggedInUser);
//           } else {
//             Future.delayed(const Duration(seconds: 2)).then((value) =>
//                 {if (!completer.isCompleted) completer.complete(loggedInUser)});
//           }
//         });
//         user = await completer.future;
//         return null;
//       } else {
//         final resp = await _firebaseFirestore
//             .collection(CollectionConstants.users)
//             .doc(user.uid)
//             .get();

//         return UserDto.fromJson(resp.data()!);
//       }
//     } catch (err) {
//       return null;
//     }
//   }

//   @override
//   Future<Either<String, String>> requestOTP(
//       {required String mobileNumber,
//       required String dialCode,
//       required Completer<String?> otpAutoFill}) async {
//     try {
//       completer = Completer<bool>();
//       String updatedMobileNumber = mobileNumber.trim();
//       updatedMobileNumber = '$dialCode$updatedMobileNumber';
//       _verifyPhoneException = null;
//       await _firebaseAuth.verifyPhoneNumber(
//         phoneNumber: updatedMobileNumber,
//         verificationCompleted: (authCredential) {
//           if (!otpAutoFill.isCompleted) {
//             otpAutoFill.complete(authCredential.smsCode);
//           }
//         },
//         verificationFailed: (FirebaseAuthException authException) {
//           _verifyPhoneException = authException;
//           if (!completer!.isCompleted) completer!.complete(false);
//         },
//         codeSent: (verificationCode, [code]) {
//           _verificationCode = verificationCode;
//           if (!completer!.isCompleted) completer!.complete(true);
//         },
//         codeAutoRetrievalTimeout: (verificationCode) {
//           _verificationCode = verificationCode;
//           if (!completer!.isCompleted) completer!.complete(true);
//         },
//       );
//       final bool status = await completer!.future;
//       if (status) {
//         return right(_verificationCode ?? '');
//       } else {
//         throw FirebaseAuthException(code: _verifyPhoneException!.code);
//       }
//     } on FirebaseAuthException catch (error) {
//       if (error.code == 'invalid-phone-number') {
//         return left(ErrorConstants.invalidMobileNumberError);
//       } else if (error.code == 'user-disabled') {
//         return left(ErrorConstants.userDisabled);
//       }
//       return left(ErrorConstants.unexpectedForMobileNumberError);
//     } catch (error) {
//       print(error);
//       return left(ErrorConstants.unexpectedForMobileNumberError);
//     }
//   }

//   @override
//   Future<Either<String, UserDto>> verifyOTP(
//       {required String dialCode,
//       required String mobileNumber,
//       required String verificationCode,
//       required String code}) async {
//     try {
//       final AuthCredential authCredential = PhoneAuthProvider.credential(
//         smsCode: code,
//         verificationId: verificationCode,
//       );
//       final user =
//           await FirebaseAuth.instance.signInWithCredential(authCredential).then(
//                 (value) => value.user,
//               );
//       if (user != null) {
//         UserDto userDto = UserDto(
//             id: user.uid,
//             name: '',
//             phoneNo: mobileNumber,
//             countryCode: dialCode,
//             isProfileCreated: false);
//         await _firebaseFirestore
//             .collection(CollectionConstants.users)
//             .doc(user.uid)
//             .set(userDto.toJson());

//         return right(userDto);
//       }
//       return left(ErrorConstants.failedToLogin);
//     } on FirebaseAuthException catch (error) {
//       if (error.code == 'invalid-verification-code') {
//         return left(ErrorConstants.invalidOTP);
//       } else if (error.code == 'session-expired') {
//         return left(ErrorConstants.otpSessionExpired);
//       } else if (error.code == 'user-disabled') {
//         return left(ErrorConstants.userDisabled);
//       }
//       return left(ErrorConstants.failedToLogin);
//     } catch (error) {
//       return left(ErrorConstants.failedToLogin);
//     }
//   }
// }
