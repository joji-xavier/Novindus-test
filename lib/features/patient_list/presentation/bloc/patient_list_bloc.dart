import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_list_event.dart';
part 'patient_list_state.dart';
part 'patient_list_bloc.freezed.dart';

class PatientListBloc extends Bloc<PatientListEvent, PatientListState> {
  PatientListBloc() : super(_Initial()) {
    on<PatientListEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
