import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppConstants {
  static String appName = 'CelestialGuide';
  static String seconds = 's';
  static showToast(String message,
          {Color? backgroundColor,
          Color? textColor,
          double? textFontSize,
          ToastGravity? toastGravity}) =>
      Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIosWeb: 1,
        webPosition: 'center',
        gravity: toastGravity ?? ToastGravity.CENTER,
        backgroundColor: backgroundColor ?? Colors.red,
        textColor: textColor ?? Colors.white,
        fontSize: textFontSize ?? 14,
      );
}

class OnboardScreenConstants {
  static String tagLine1 = 'Unveiling the Wonders of the Universe';
  static String tagLine1Desc =
      'Discover the breathtaking beauty and awe-inspiring mysteries of the vast universe as our app takes you on an incredible journey through space.';
  static String tagLine2 = 'Explore the Cosmos at Your Fingertips';
  static String tagLine2Desc =
      'Embark on an immersive exploration of the cosmos, where you can delve into the realms of stars, planets, and galaxies, all from the convenience of your fingertips.';
  static String tagLine3 = 'Your Gateway to Infinite Space Knowledge';
  static String tagLine3Desc =
      'Open the door to boundless knowledge about the wonders of space, where you can uncover captivating insights, intriguing facts, and fascinating discoveries with our comprehensive app.';
}

class HomeScreenConstants {
  static String hello = 'Hello';
  static String celestialVoyager = 'Celestial Voyager';
  static String searchPost = 'Search...';
  static String selectDate = 'Please select date';
  static String startDate = 'Start date';
  static String startDateHint = 'Please select start date';
  static String endDate = 'End date';
  static String endDateHint = 'Please select end date';
}

class ProfileScreenConstants {
  static String profile = 'Profile';
  static String guestUser = 'Guest User';
  static String favorite = 'My Favorite';
  static String abtFavoriteWithoutLogin =
      'To add favorites, please log in first.';
  static String darkMode = 'Dark Mode';
  static String aboutDarkMode = 'Activate dark Mode';
  static String lightMode = 'Light Mode';
  static String aboutLightMode = 'Activate Light Mode';
  static String joinUs = 'Join Us';
  static String abtJoinUs = 'Explore the cosmos with us!';
}

class ErrorConstants {
  static String genericError = 'Something went wrong,Please try again!';
  static String unexpectedForMobileNumberError =
      'OTP Request Failed, Please try again';
  static String failedToLogin = 'Failed to verify phone number!';
  static String failedToUpload = 'Failed to upload, Please try again!';
  static String failedToUpdate = 'Failed to update, Please try again!';
  static String failedToOnlinePayment =
      'Failed to proceed online payment, Please try again!';
  static String invalidMobileNumberError = 'Invalid Phone Number';
  static String otpSessionExpired =
      'OTP verification code has expired please click on resend';
  static String invalidOTP = 'Invalid OTP';
  static String invalidAge = 'Invalid age';
  static String invalidEmail = 'Invalid email';
  static String invalidMobileNo = 'Invalid mobile number';
  static String requiredField = 'Required';
  static String failedTOCreateAccount =
      'Failed to create account, Please try again!';
  static String failedToDeleteAccount =
      'Failed to delete account, Please try again!';

  static String failedToAddAddress = 'Failed to add address, Please try again!';

  static String networkUnavailable = 'Network Unavailable !';
  static String emailExist = 'Email already exist!';
  static String invalidRefCode = 'Invalid referral code!';
  static String userDisabled = 'Your account has been disabled';
  static String noTestFound = 'No Test Found';
  static String cameraRequired = 'Camera permission required';
  static String paymentOptionRequired = 'Please select payment option';
  static String patientExist = 'Patient name is already exist!';
}

class AuthConstants {
  static String loginToAccount =
      'Discover the wonders beyond our world. Sign in to start exploring.';
  static String getStarted = 'Get started ';
  static String mobileNo = 'Mobile Number';
  static String fullName = 'Full name';
  static String emailId = 'Email id (optional)';
  static String yourAge = 'Your age';
  static String yourSex = 'Your sex';
  static String referralCode = 'Referral code';
  static String byContinue = 'By continuing, you agree to our';
  static String agreeToTerms = 'Terms of Service and Privacy Policy';
  static String verifyPhone = 'Verify Phone';
  static String pleaseEnterOTP = 'Please enter the OTP sent to\n';
  static String notReceived = 'Didn’t received? ';
  static String resend = 'Resend';
  static String letUsKnowYou = 'Let us know you';
  static String detailsAboutYou = 'Enter some details about you';
  static String haveReferralCode = 'I have a referral code';
  static String createAccount = 'Create account';
  static String continueText = 'Continue';
  static String otpSentSuccess = 'OTP sent successfully !';
}
