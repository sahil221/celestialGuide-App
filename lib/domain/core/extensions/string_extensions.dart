import 'package:flutter/material.dart';

import '../services/navigation_services/routers/routing_dto.dart';

extension StringExtension on String {
  RoutingDto get getRoutingData {
    final uriData = Uri.parse(this);
    return RoutingDto(
        route: uriData.path, queryParameters: uriData.queryParameters);
  }

  String get getContentTypeImage {
    switch (toLowerCase()) {
      case 'jpe':
        return 'jpeg';
      case 'jpg':
        return 'jpeg';
      case 'jpeg':
        return 'jpeg';
      case 'heic':
        return 'heic';
      default:
        return toLowerCase();
    }
  }

  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';

  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');

  Color get getBackgroundColorBasedOnOrderStatus {
    if (this == 'PLACED') {
      return const Color(0xFFfcf7d9);
    } else if (this == 'APPROVED') {
      return const Color(0xFFdefdff);
    } else if (this == 'REJECTED') {
      return const Color(0xFFfad9d9);
    } else if (this == 'SHIPPED') {
      return const Color(0xFFFFF7ED);
    } else {
      return const Color(0xFFD1FAE5);
    }
  }

  Color get getTextColorBasedOnOrderStatus {
    if (this == 'PLACED') {
      return const Color(0xFFeac50c);
    } else if (this == 'APPROVED') {
      return const Color(0xFF0cdfea);
    } else if (this == 'REJECTED') {
      return const Color(0xFFea0c0c);
    } else if (this == 'SHIPPED') {
      return const Color(0xFFEA580C);
    } else {
      return const Color(0xFF065F46);
    }
  }
}
