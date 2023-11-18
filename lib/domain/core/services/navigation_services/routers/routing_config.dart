import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../infrastructure/enum/media_type_enum.dart';
import '../../../../../presentation/astronomy_details/astronomy_details_screen.dart';
import '../../../../../presentation/home/home_screen.dart';
import '../../../../../presentation/media_view/media_view_screen.dart';
import '../../../../../presentation/onboard/onboard_screen.dart';
import '../../../../../presentation/profile/profile_screen.dart';
import '../../../../../presentation/search/search_screen.dart';
import '../../../extensions/string_extensions.dart';
import '../../navigation_services/routers/route_name.dart';

Route<dynamic> authorizedNavigation(RouteSettings settings) {
  final routingData = settings.name!.getRoutingData;
  switch (routingData.route) {
    case CoreRoutes.profileRoute:
      return _getPageRoute(const ProfileScreen(), settings);

    default:
      return commonNavigation(settings);
  }
}

Route<dynamic> beforeLoginRoute(RouteSettings settings) {
  final routingData = settings.name!.getRoutingData;
  switch (routingData.route) {
    case AuthRoutes.onBoardRoute:
      return _getPageRoute(const OnBoardScreen(), settings);

    default:
      return commonNavigation(settings);
  }
}

Route<dynamic> commonNavigation(RouteSettings settings) {
  final routingData = settings.name!.getRoutingData;
  switch (routingData.route) {
    // BASIC ROUTES
    case CoreRoutes.homeRoute:
      return _getPageRoute(const HomeScreen(), settings);
    case CoreRoutes.searchRoute:
      return _getPageRoute(const SearchScreen(), settings);
    case CoreRoutes.astronomyDetailsRoute:
      final routeData = routingData.queryParameters;
      final String selectedDate = routeData['selectedDate'] ?? '';
      return _getPageRoute(
          AstronomyDetailsScreen(selectedDate: selectedDate), settings);

    case CoreRoutes.mediaViewRoute:
      final routeData = routingData.queryParameters;
      final String url = routeData['url'] ?? '';
      final String mediaType = routeData['mediaType'] ?? '';
      return _getPageRoute(
          MediaViewScreen(
            url: url,
            isVideo: mediaType == MediaTypeEnum.VIDEO.name.toLowerCase(),
          ),
          settings);

    case CoreRoutes.profileRoute:
      return _getPageRoute(const ProfileScreen(), settings);

    default:
      return _getPageRoute(
          Container(
            color: Colors.white,
            child: const Center(
              child: Text(
                'DEFAULT ROUTE !',
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 1.5,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          settings);
  }
}

PageRoute _getPageRoute(
  Widget child,
  RouteSettings settings, {
  bool mainRoute = false,
}) {
  if (Platform.isIOS && !mainRoute) {
    return CupertinoPageRoute(builder: (BuildContext context) => child);
  } else {
    return MaterialPageRoute(builder: (BuildContext context) => child);
  }
}

class CupertinoRoute extends PageRouteBuilder {
  final Widget enterPage;
  CupertinoRoute({required this.enterPage})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return enterPage;
          },
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).animate(
                CurvedAnimation(
                  parent: animation,
                  curve: Curves.linearToEaseOut,
                  reverseCurve: Curves.easeInToLinear,
                ),
              ),
              child: enterPage,
            );
          },
        );
}
