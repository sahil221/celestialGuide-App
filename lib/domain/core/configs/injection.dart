import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
// ignore: depend_on_referenced_packages
import 'package:injectable/injectable.dart';
import '../services/navigation_services/navigation_service.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
void configureInjection() => getIt.init();

GetIt navigator = GetIt.instance;

void setupLocator(GlobalKey<NavigatorState> navKey) {
  navigator.registerFactory(() => NavigationService(navKey));
}
