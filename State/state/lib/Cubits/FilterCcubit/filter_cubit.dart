// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

part 'filter_state.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(FilterInitial());

  void emitSelectedIndex(int index) {
    emit(FilterItemSelected(index));
  }
}
