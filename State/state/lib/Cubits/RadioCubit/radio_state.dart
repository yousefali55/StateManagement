import 'package:equatable/equatable.dart';

abstract class RadioState extends Equatable {
  const RadioState();  

  @override
  List<Object?> get props => [];
}
class RadioInitialState extends RadioState {
  final int selectedIndex;
  const RadioInitialState(this.selectedIndex);
  @override
  List<Object?> get props => [selectedIndex];
}
