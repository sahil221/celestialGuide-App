import 'dart:async';

import 'package:dartz/dartz.dart';

import '../../infrastructure/dto/user/user_dto.dart';

abstract class AuthRepository {
  Future<Either<String, String>> requestOTP({
    required String mobileNumber,
    required String dialCode,
    required Completer<String?> otpAutoFill,
  });

  Future<Either<String, UserDto>> verifyOTP({
    required String dialCode,
    required String mobileNumber,
    required String verificationCode,
    required String code,
  });
  Future<UserDto?> authenticateUser();
}
