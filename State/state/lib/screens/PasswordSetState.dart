import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<Password> {
  bool _isPasswordVisible = false;
  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Password Toggle Example'),
      ),
      body: Center(
        child: TextFormField(
          obscureText: !_isPasswordVisible,
          decoration: InputDecoration(
            labelText: 'Password',
            suffixIcon: GestureDetector(
              onTap: _togglePasswordVisibility,
              child: Icon(_isPasswordVisible ? Icons.visibility : Icons.visibility_off),
            ),
          ),
        ),
      ),
    );
  }
}