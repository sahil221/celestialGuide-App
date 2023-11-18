import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/astronomy/astronomy_repository.dart';
import '../../domain/core/configs/app_config.dart';
import '../../infrastructure/dto/astronomy/astronomy_dto.dart';
import '../../infrastructure/astronomy/i_astronomy_repository.dart';

part 'astronomy_details_event.dart';
part 'astronomy_details_state.dart';
part 'astronomy_details_bloc.freezed.dart';

class AstronomyDetailsBloc
    extends Bloc<AstronomyDetailsEvent, AstronomyDetailsState> {
  AstronomyDetailsBloc(AstronomyDetailsState initState) : super(initState) {
    on<_Init>((event, emit) {
      emit(state.copyWith(isLoading: true));
      add(const AstronomyDetailsEvent.onLoad());
    });

    on<_OnLoad>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      Either<String, List<AstronomyDto>> resp =
          await state.astronomyRepository.getAstronomyData(
        startDate: DateTime.parse(state.selectedDate),
        endDate: DateTime.parse(state.selectedDate),
      );
      resp.fold((l) {
        emit(state.copyWith(
          isLoading: false,
          isFailed: true,
          isSuccessful: false,
          responseMsg: l,
        ));
      }, (r) {
        emit(state.copyWith(
          isLoading: false,
          isFailed: false,
          isSuccessful: true,
          astronomyData: r[0],
        ));
      });
    });
  }
}
