part of 'astronomy_details_bloc.dart';

@freezed
class AstronomyDetailsEvent with _$AstronomyDetailsEvent {
  const factory AstronomyDetailsEvent.init() = _Init;
  const factory AstronomyDetailsEvent.onLoad() = _OnLoad;
}
