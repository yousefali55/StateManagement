import 'package:bloc/bloc.dart';
import 'package:state/Cubits/RadioCubit/radio_state.dart';

class RadioCubit extends Cubit<RadioState> {
  RadioCubit() : super(RadioInitialState(0));

  void selectRadio(int index) {
    emit(RadioInitialState(index));
  }
}
