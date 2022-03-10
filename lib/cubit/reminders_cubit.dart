import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class RemindersCubit extends Cubit<List<String>> {
  RemindersCubit() : super([]);

  void selectDay(String day) {
    if (isSelected(day)) {
      state.remove(day);
    } else {
      state.add(day);
    }
    emit(List.from(state));
  }

  bool isSelected(String day) {
    int index = state.indexOf(day);
    if (index == -1) {
      return false;
    } else {
      return true;
    }
  }
}
