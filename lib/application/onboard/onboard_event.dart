part of 'onboard_bloc.dart';

@freezed
class OnboardEvent with _$OnboardEvent {
  const factory OnboardEvent.emitFromAnywhere({required OnboardState state}) =
      _EmitFromAnywhere;
}
