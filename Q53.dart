import 'package:flutter/material.dart';

class ColorChanger extends StatefulWidget {
  const ColorChanger({super.key});
  @override
  State<ColorChanger> createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger> {
  Color _currentColor = Colors.white;

  void changeColor(Color color) {
    setState(() {
      _currentColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            color: _currentColor,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  changeColor(Colors.red);
                },
                child: Text('Button 1'),
              ),
              ElevatedButton(
                onPressed: () {
                  changeColor(Colors.green);
                },
                child: Text('Button 2'),
              ),
              ElevatedButton(
                onPressed: () {
                  changeColor(Colors.blue);
                },
                child: Text('Button 3'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
