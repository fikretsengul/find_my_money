part of 'general_bloc.dart';

@freezed
class GeneralEvent with _$GeneralEvent {
  const factory GeneralEvent.resetState() = _ResetState;
}
