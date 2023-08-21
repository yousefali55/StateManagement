import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state/Cubits/PassCubit/cubit/password_cubit.dart';
import 'password_cubit.dart';

class PasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Password Toggle Example'),
      ),
      body: Center(
        child: PasswordField(),
      ),
    );
  }
}

class PasswordField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PasswordCubit, bool>(
      builder: (context, state) {
        return TextFormField(
          obscureText: state,
          decoration: InputDecoration(
            labelText: 'Password',
            suffixIcon: GestureDetector(
              onTap: () {
                context.read<PasswordCubit>().togglePasswordVisibility();
              },
              child: Icon(state ? Icons.visibility : Icons.visibility_off),
            ),
          ),
        );
      },
    );
  }
}
