import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'general_event.dart';
part 'general_state.dart';
part 'general_bloc.freezed.dart';

class GeneralBloc extends Bloc<GeneralEvent, GeneralState>
    with HydratedMixin<GeneralState> {
  GeneralBloc() : super(GeneralState.initial());

  @override
  Stream<GeneralState> mapEventToState(
    GeneralEvent event,
  ) async* {
    yield* event.map(
      //* Resets state
      resetState: (e) async* {
        yield GeneralState.initial();
      },
    );
  }

  @override
  GeneralState? fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic>? toJson(GeneralState state) {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
