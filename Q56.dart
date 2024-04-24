import 'package:flutter/material.dart';

class cochane extends StatelessWidget {
  const cochane({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Four Images Around TextView'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('This is a TextView'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('Asset/pasta-removebg-preview.png'),
                  Image.asset('Asset/sushi.png'),
                  Image.asset('Asset/coffiback.jpng'),
                  Image.asset('Asset/background.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
