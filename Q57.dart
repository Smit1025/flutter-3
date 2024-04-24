import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Picker App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _redValue = 128.0;
  double _greenValue = 128.0;
  double _blueValue = 128.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Picker App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Red: ${_redValue.toInt()}'),
            Slider(
              value: _redValue,
              min: 0.0,
              max: 255.0,
              onChanged: (value) {
                setState(() {
                  _redValue = value;
                });
              },
            ),
            Text('Green: ${_greenValue.toInt()}'),
            Slider(
              value: _greenValue,
              min: 0.0,
              max: 255.0,
              onChanged: (value) {
                setState(() {
                  _greenValue = value;
                });
              },
            ),
            Text('Blue: ${_blueValue.toInt()}'),
            Slider(
              value: _blueValue,
              min: 0.0,
              max: 255.0,
              onChanged: (value) {
                setState(() {
                  _blueValue = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            Container(
              width: double.infinity,
              height: 200.0,
              color: Color.fromRGBO(_redValue.toInt(), _greenValue.toInt(),
                  _blueValue.toInt(), 1.0),
            ),
          ],
        ),
      ),
    );
  }
}
