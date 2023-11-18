import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'domain/core/configs/app_config.dart';
import 'domain/core/configs/injection.dart';
import 'domain/core/services/navigation_services/navigation_service.dart';
import 'domain/core/services/navigation_services/routers/route_name.dart';
import 'domain/core/services/navigation_services/routers/routing_config.dart';
import 'domain/core/services/storage_services/onboarding_storage_service.dart';
import 'domain/core/services/storage_services/theme_storage_service.dart';
import 'domain/core/themes/app_theme.dart';

class MainApp extends StatelessWidget with WidgetsBindingObserver {
  @override
  MainApp({Key? key}) : super(key: key) {
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.of(context)!.appTitle,
      debugShowCheckedModeBanner: false,
      theme: Provider.of<AppStateNotifier>(context).isDarkModeSelected
          ? appThemeData[AppTheme.Dark]
          : appThemeData[AppTheme.Light],
      builder: (context, child) => ResponsiveSizer(
        builder: (context, orientation, deviceType) {
          return child!;
        },
      ),
      navigatorKey: navigator<NavigationService>().navigatorKey,
      onGenerateRoute: Provider.of<AppStateNotifier>(context).isAuthorized
          ? authorizedNavigation
          : beforeLoginRoute,
      initialRoute: Provider.of<AppStateNotifier>(context).isOnboardCompleted
          ? CoreRoutes.homeRoute
          : AuthRoutes.onBoardRoute,
    );
  }
}

Future appInitializer(AppConfig appConfig) async {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
  final Directory appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);

  bool isAuthorized = false;
  bool isOnboardingComplete =
      await OnboardingStorageService.isOnboardingCompleted();
  ;
  bool isDarkModeSelected = await ThemesStorageService.isDarkThemeSelected();
  AppStateNotifier appStateNotifier = AppStateNotifier(
    isAuthorized: isAuthorized,
    isOnboardCompleted: isOnboardingComplete,
    isDarkModeSelected: isDarkModeSelected,
  );

  final AppConfig configuredApp = AppConfig(
    appTitle: appConfig.appTitle,
    buildFlavor: appConfig.buildFlavor,
    nasaApiEndPoint: appConfig.nasaApiEndPoint,
    nasaApiKey: appConfig.nasaApiKey,
    child: ChangeNotifierProvider<AppStateNotifier>(
      create: (context) {
        return appStateNotifier;
      },
      child: ResponsiveSizer(
        builder: (context, orientation, deviceType) {
          return MainApp();
        },
      ),
    ),
  );
  setupLocator(navKey);
  return runApp(configuredApp);
}
