import 'package:flutter/material.dart';

class myallbutton extends StatefulWidget {
  const myallbutton({super.key});

  @override
  State<myallbutton> createState() => _myallbuttonState();
}

class _myallbuttonState extends State<myallbutton> {
  int? _selectedOperation;
  TextEditingController _number1Controller = TextEditingController();
  TextEditingController _number2Controller = TextEditingController();

  double _result = 0.0;

  void _calculateResult() {
    double number1 = double.parse(_number1Controller.text);
    double number2 = double.parse(_number2Controller.text);

    switch (_selectedOperation) {
      case 0:
        _result = number1 + number2;
        break;
      case 1:
        _result = number1 - number2;
        break;
      case 2:
        _result = number1 * number2;
        break;
      case 3:
        _result = number1 / number2;
        break;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Radio(
                  value: 0,
                  groupValue: _selectedOperation,
                  onChanged: (value) {
                    setState(() {
                      _selectedOperation = value as int;
                    });
                  },
                ),
                Text('Add'),
                Radio(
                  value: 1,
                  groupValue: _selectedOperation,
                  onChanged: (value) {
                    setState(() {
                      _selectedOperation = value as int;
                    });
                  },
                ),
                Text('Subtract'),
                Radio(
                  value: 2,
                  groupValue: _selectedOperation,
                  onChanged: (value) {
                    setState(() {
                      _selectedOperation = value as int;
                    });
                  },
                ),
                Text('Multiply'),
                Radio(
                  value: 3,
                  groupValue: _selectedOperation,
                  onChanged: (value) {
                    setState(() {
                      _selectedOperation = value as int;
                    });
                  },
                ),
                Text('Divide'),
              ],
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _number1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Number 1',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _number2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Number 2',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _calculateResult,
              child: Text('Calculate'),
            ),
            SizedBox(height: 16.0),
            Text(
              _result.toStringAsFixed(2),
              style: TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
    );
  }
}
