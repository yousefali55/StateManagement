import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state/Cubits/FilterCcubit/filter_cubit.dart';

class Filtercubit extends StatelessWidget {
  Filtercubit({super.key});
    final List<String> filterOptions = [
    'التنفيذ',
    'الملغية',
    'المكتملة',
    'تحت المراجعة',
    'تمت'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FilterApp"),
      ),
      body: Container(
        height: 60,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: filterOptions.length,
          itemBuilder: (context, index) {
            final text = filterOptions[index];
            return Padding(
              padding: EdgeInsets.all(10.0),
              child: BlocBuilder<FilterCubit, FilterState>(
                builder: (context, state) {
                  return ElevatedButton(
                    onPressed: () {
                      context.read<FilterCubit>().emit(FilterItemSelected(index));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: (state is FilterItemSelected && state.selectedIndex == index) ? Colors.blue : Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Text(text),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
