part of 'general_bloc.dart';

@freezed
class GeneralState with _$GeneralState {
  const factory GeneralState() = _GeneralState;

  factory GeneralState.initial() => const GeneralState();
}
