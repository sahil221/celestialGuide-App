import 'package:flutter/material.dart';

class AppStateNotifier extends ChangeNotifier {
  bool isAuthorized;
  bool isOnboardCompleted;
  bool isDarkModeSelected;
  AppStateNotifier(
      {required this.isAuthorized,
      required this.isOnboardCompleted,
      required this.isDarkModeSelected});

  Future<void> updateAfterAuthChange({required bool isAuthorized}) async {
    this.isAuthorized = isAuthorized;
    notifyListeners();
  }

  Future<void> updateAfterOnBoardCompletedChange(
      {required bool isOnboardCompleted}) async {
    this.isOnboardCompleted = isOnboardCompleted;
    notifyListeners();
  }

  Future<void> updateAfterThemeModeChange(
      {required bool isDarkModeSelected}) async {
    this.isDarkModeSelected = isDarkModeSelected;
    notifyListeners();
  }

  Future<void> notifyState() async {
    notifyListeners();
  }
}

class AppConfig extends InheritedWidget {
  final String appTitle;
  final String buildFlavor;
  final String nasaApiEndPoint;
  final String nasaApiKey;

  @override
  // ignore: overridden_fields
  final Widget child;

  const AppConfig({
    Key? key,
    required this.appTitle,
    required this.buildFlavor,
    required this.child,
    required this.nasaApiEndPoint,
    required this.nasaApiKey,
  }) : super(key: key, child: child);

  static AppConfig? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
