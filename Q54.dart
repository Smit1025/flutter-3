import 'package:flutter/material.dart';

class helloupexple extends StatefulWidget {
  const helloupexple({super.key});
  @override
  State<helloupexple> createState() => _helloupexpleState();
}

class _helloupexpleState extends State<helloupexple> {
  double _textSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'smit',
              style: TextStyle(fontSize: _textSize),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _textSize += 2.0;
                    });
                  },
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _textSize -= 2.0;
                    });
                  },
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
