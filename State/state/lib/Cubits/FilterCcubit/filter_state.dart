part of 'filter_cubit.dart';

class FilterState {}

class FilterInitial extends FilterState {}

class FilterItemSelected extends FilterState {
  final int selectedIndex;

  FilterItemSelected(this.selectedIndex);
}
