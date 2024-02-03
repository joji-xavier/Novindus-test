import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_update_event.dart';
part 'patient_update_state.dart';
part 'patient_update_bloc.freezed.dart';

class PatientUpdateBloc extends Bloc<PatientUpdateEvent, PatientUpdateState> {
  PatientUpdateBloc() : super(_Initial()) {
    on<PatientUpdateEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
