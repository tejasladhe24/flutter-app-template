import 'package:bloc/bloc.dart';
import 'package:flutter_template/logic/bottom_nav/state.dart';
import 'package:flutter_template/logic/event_state.dart';

class BottomNavEvent extends BlocEvent {
  int screenIdx;
  BottomNavEvent({this.screenIdx = 0});
}

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavState initialState = BottomNavState(pageIdx: 0);
  BottomNavBloc(this.initialState) : super(initialState) {
    on<BottomNavEvent>((event, emit) {
      if (event.screenIdx == 0) emit(BottomNavState(pageIdx: 0));
      if (event.screenIdx == 1) emit(BottomNavState(pageIdx: 1));
      if (event.screenIdx == 2) emit(BottomNavState(pageIdx: 2));
      if (event.screenIdx == 3) emit(BottomNavState(pageIdx: 3));
      if (event.screenIdx == 4) emit(BottomNavState(pageIdx: 4));
    });
  }
}
