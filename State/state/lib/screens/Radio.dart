import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state/Cubits/RadioCubit/radio_cubit.dart';
import 'package:state/Cubits/RadioCubit/radio_state.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final radioCubit = context.read<RadioCubit>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Example'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return RadioListTile<int>(
              title: Text('Radio $index'),
              value: index,
              groupValue: radioCubit.state is RadioInitialState
                  ? (radioCubit.state as RadioInitialState).selectedIndex
                  : null,
              onChanged: (int? value) {
                radioCubit.selectRadio(value!);
              },
            );
          },
        ),
      ),
    );
  }
}
