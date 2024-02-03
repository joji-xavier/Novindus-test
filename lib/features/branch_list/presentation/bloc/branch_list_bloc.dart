import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch_list_event.dart';
part 'branch_list_state.dart';
part 'branch_list_bloc.freezed.dart';

class BranchListBloc extends Bloc<BranchListEvent, BranchListState> {
  BranchListBloc() : super(_Initial()) {
    on<BranchListEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
