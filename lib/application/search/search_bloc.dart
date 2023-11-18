import 'package:dartz/dartz.dart';
import 'package:intl/intl.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/astronomy/astronomy_repository.dart';
import '../../domain/core/configs/app_config.dart';
import '../../infrastructure/dto/astronomy/astronomy_dto.dart';
import '../../infrastructure/astronomy/i_astronomy_repository.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  bool isFetching = false;
  SearchBloc(SearchState initState) : super(initState) {
    on<_OnDateChange>((event, emit) async {
      DateTime? startDate = state.selectedStartDate;
      DateTime? endDate = state.selectedEndDate;
      emit(state.copyWith(isLoading: true));
      if (event.isStartDate) {
        state.startDateController.text =
            DateFormat('yyyy-MM-dd').format(event.selectedDate);
        startDate = event.selectedDate;
        emit(state.copyWith(selectedStartDate: startDate));
      } else {
        state.endDateController.text =
            DateFormat('yyyy-MM-dd').format(event.selectedDate);
        endDate = event.selectedDate;
        emit(state.copyWith(selectedEndDate: endDate));
      }

      Either<String, List<AstronomyDto>> resp =
          await state.astronomyRepository.getAstronomyData(
        startDate: startDate == null && endDate != null
            ? endDate.subtract(const Duration(days: 10))
            : startDate,
        endDate: endDate,
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
          hasMoreData: startDate == null
              ? r[r.length - 1].date != '1995-06-16'
              : r[r.length - 1].date !=
                  DateFormat('yyyy-MM-dd').format(startDate),
          lastDateFetched: r[r.length - 1].date,
          lsOfAstronomyData: r.reversed.toList(),
        ));
        if (state.hasMoreData) {
          state.scrollController.addListener(() {
            final double maxScroll =
                state.scrollController.position.maxScrollExtent;
            final double currentScroll = state.scrollController.position.pixels;
            const double delta = 100.0; // or something else..
            if (maxScroll - currentScroll <= delta) {
              if (state.hasMoreData) {
                // print(isFetching);
                if (!isFetching) {
                  isFetching = true;
                  // add(const HomeEvent.onLoadMore());
                }
              }
            }
          });
        }
      });
    });
  }
}
