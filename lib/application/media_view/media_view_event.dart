part of 'media_view_bloc.dart';

@freezed
class MediaViewEvent with _$MediaViewEvent {
  const factory MediaViewEvent.init() = _Init;
  const factory MediaViewEvent.emitFromAnywhere(
      {required MediaViewState state}) = _EmitFromAnywhere;
}
