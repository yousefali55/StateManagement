import 'package:flutter/material.dart';

class Replace1 extends StatefulWidget {
  const Replace1({Key? key}) : super(key: key);

  @override
  _ReplaceState createState() => _ReplaceState();
}

class _ReplaceState extends State<Replace1> {
  Widget _currentWidget = Text("No Button Selected");

  void _showText() {
    setState(() {
      _currentWidget = Text("Hello I'm Youseff");
    });
  }

  void _showImage() {
    setState(() {
      _currentWidget = SizedBox(
        height: 100,
        width: 100,
        child: Image.network(
          "https://raw.githubusercontent.com/felangel/bloc/master/docs/assets/flutter_bloc_logo_full.png",
        ),
      );
    });
  }

  void _showCircle() {
    setState(() {
      _currentWidget = Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Replace Example"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            _currentWidget,
            SizedBox(height: 100),
            ElevatedButton(
              onPressed: _showText,
              child: Text("Show Text"),
            ),
            ElevatedButton(
              onPressed: _showImage,
              child: Text("Show Image"),
            ),
            ElevatedButton(
              onPressed: _showCircle,
              child: Text("Show Circle"),
            ),
          ],
        ),
      ),
    );
  }
}
