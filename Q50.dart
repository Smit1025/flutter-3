import 'package:flutter/material.dart';

class NumberListScreen extends StatelessWidget {
  const NumberListScreen(
      {required this.firstNumber, required this.secondNumber});
  final int firstNumber;
  final int secondNumber;

  @override
  Widget build(BuildContext context) {
    List<int> numbers = [];
    for (int i = firstNumber; i <= secondNumber; i++) {
      numbers.add(i);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Number List'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(numbers[index].toString()),
          );
        },
      ),
    );
  }
}
