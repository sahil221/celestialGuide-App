import 'package:hive/hive.dart';

import 'storage_service.dart';

class ThemesStorageService {
  static Future<bool> isDarkThemeSelected() async {
    final themeBox = await Hive.openBox(StorageService.themeBox);
    final bool isDarkThemeSelected =
        themeBox.get('isDarkThemeSelected', defaultValue: false);
    return isDarkThemeSelected;
  }

  static Future<bool> updateIsDarkThemeSelected({
    required bool isDarkThemeSelected,
  }) async {
    final themeBox = await Hive.openBox(StorageService.themeBox);
    themeBox.put('isDarkThemeSelected', isDarkThemeSelected);
    return isDarkThemeSelected;
  }

  static Future resetIsDarkThemeSelected() async {
    final themeBox = await Hive.openBox(StorageService.themeBox);
    themeBox.clear();
  }
}
