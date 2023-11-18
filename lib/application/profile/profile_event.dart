part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.emitFromAnywhere({required ProfileState state}) =
      _EmitFromAnywhere;
}
