// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

part 'replace_state.dart';

class ReplaceCubit extends Cubit<ReplaceState> {
  ReplaceCubit() : super(ReplaceInitial());
  void showText(){
    emit(ShowText());
  }
  void showImage(){
    emit(ShowImage());
  }
  void showCircle(){
    emit(ShowCircle());
  }
}
