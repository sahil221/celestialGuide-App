import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:intl/intl.dart';

import '../../domain/astronomy/astronomy_repository.dart';
import '../../domain/core/services/network_services/rest_services.dart';
import '../dto/astronomy/astronomy_dto.dart';

class IAstronomyRepository extends AstronomyRepository {
  final String apiBaseUrl;
  final String apiKey;

  IAstronomyRepository(this.apiBaseUrl, this.apiKey);

  @override
  Future<Either<String, List<AstronomyDto>>> getAstronomyData(
      {DateTime? startDate, DateTime? endDate}) async {
    try {
      List<AstronomyDto> lsOfAstronomyData = [];
      String? startingDate =
          startDate == null ? null : DateFormat('yyyy-MM-dd').format(startDate);
      String? endingDate =
          endDate == null ? null : DateFormat('yyyy-MM-dd').format(endDate);

      final params = {
        'start_date': startingDate,
        'end_date': endingDate,
        'thumbs': 'true',
        'api_key': apiKey,
      };
      var response1 = await RESTService.performGETRequest(
        isAuth: false,
        httpUrl: apiBaseUrl,
        param: params,
      );
      if (response1.statusCode == 200) {
        String responseData = response1.body;
        final data = jsonDecode(responseData);
        if (data is Map<String, dynamic>) {
          AstronomyDto astronomyDto = AstronomyDto.fromJson(data);
          lsOfAstronomyData.add(astronomyDto);
        } else {
          for (var astronomyData in data) {
            AstronomyDto astronomyDto = AstronomyDto.fromJson(astronomyData);
            lsOfAstronomyData.add(astronomyDto);
          }
        }

        return right(lsOfAstronomyData);
      }
      // else if (response1.statusCode == 400) {
      //   return left('Failed to Upload ${response1.statusCode} - Error');
      // }
      return left('Failed to Upload');
    } catch (e) {
      print(e);
      return left('Failed to Upload');
    }
  }
}
