import 'package:dartz/dartz.dart';

import '../../infrastructure/dto/astronomy/astronomy_dto.dart';

abstract class AstronomyRepository {
  Future<Either<String, List<AstronomyDto>>> getAstronomyData({
    DateTime? startDate,
    DateTime? endDate,
  });
}
