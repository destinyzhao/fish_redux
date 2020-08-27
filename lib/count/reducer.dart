import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CountState> buildReducer() {
  return asReducer(
    <Object, Reducer<CountState>>{
      CountAction.updateCount: _updateCount,
    },
  );
}

CountState _updateCount(CountState state, Action action) {
  final CountState newState = state.clone();
  newState.count = action.payload;
  return newState;
}
