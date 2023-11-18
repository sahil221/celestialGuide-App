import 'package:hive/hive.dart';

import 'storage_service.dart';

class OnboardingStorageService {
  static Future<bool> isOnboardingCompleted() async {
    final coreBox = await Hive.openBox(StorageService.coreBox);
    final bool isOnboardingCompleted =
        coreBox.get('isOnboardingCompleted', defaultValue: false);
    return isOnboardingCompleted;
  }

  static Future<bool> updateOnboardingCompleted({
    required bool isOnboardingCompleted,
  }) async {
    final coreBox = await Hive.openBox(StorageService.coreBox);
    coreBox.put('isOnboardingCompleted', isOnboardingCompleted);
    return isOnboardingCompleted;
  }

  static Future resetOnboardingCompleted() async {
    final coreBox = await Hive.openBox(StorageService.coreBox);
    coreBox.clear();
  }
}
