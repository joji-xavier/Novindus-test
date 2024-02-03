import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'treatment_list_event.dart';
part 'treatment_list_state.dart';
part 'treatment_list_bloc.freezed.dart';

class TreatmentListBloc extends Bloc<TreatmentListEvent, TreatmentListState> {
  TreatmentListBloc() : super(_Initial()) {
    on<TreatmentListEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
