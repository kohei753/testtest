import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: MyApp(),
  ),
);

enum Fruits { Apple, Orange, Grape }

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<MyApp> {
  var _radVal = Fruits.Apple;

  void _onChanged(Fruits value) {
    setState(() {
      _radVal = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Test'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            RadioListTile(
                title: Text('◯◯中学校'),
                value: Fruits.Orange,
                groupValue: _radVal,
                onChanged: _onChanged),
            RadioListTile(
                title: Text('△△中学校'),
                value: Fruits.Apple,
                groupValue: _radVal,
                onChanged: _onChanged),
            RadioListTile(
                title: Text('□□中学校'),
                value: Fruits.Grape,
                groupValue: _radVal,
                onChanged: _onChanged),
          ],
        ),
      ),
    );
  }
}