import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/astronomy/astronomy_repository.dart';
import '../../domain/core/configs/app_config.dart';
import '../../infrastructure/dto/astronomy/astronomy_dto.dart';
import '../../infrastructure/astronomy/i_astronomy_repository.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  bool isFetching = false;
  HomeBloc(HomeState initState) : super(initState) {
    on<_Init>((event, emit) {
      add(const HomeEvent.onLoad());
    });
    // on load
    on<_OnLoad>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      Either<String, List<AstronomyDto>> resp =
          await state.astronomyRepository.getAstronomyData(
        startDate: DateTime.now().subtract(
          const Duration(
            days: 10,
          ),
        ),
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
          hasMoreData: r[r.length - 1].date != '1995-06-16',
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
                  add(const HomeEvent.onLoadMore());
                }
              }
            }
          });
        }
      });
    });
    on<_OnLoadMore>((event, emit) async {
      final end = DateTime.parse(state.lastDateFetched);
      Either<String, List<AstronomyDto>> resp =
          await state.astronomyRepository.getAstronomyData(
              startDate: end.subtract(
                const Duration(
                  days: 10,
                ),
              ),
              endDate: end);
      resp.fold((l) {
        emit(state.copyWith(
          isLoading: false,
          isFailed: true,
          isSuccessful: false,
          responseMsg: l,
        ));
      }, (r) {
        r = r.reversed.toList();
        state.lsOfAstronomyData.addAll(r);
        emit(state.copyWith(
          hasMoreData: r[r.length - 1].date != '1995-06-16',
          lastDateFetched: r[r.length - 1].date,
        ));
      });
      isFetching = false;
    });
  }
}
