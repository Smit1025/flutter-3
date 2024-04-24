import 'package:flutter/material.dart';

class chekbox extends StatefulWidget {
  const chekbox({super.key});

  @override
  State<chekbox> createState() => _chekboxState();
}

class _chekboxState extends State<chekbox> {
  @override
  bool is_checked = false;
  String ans = "";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chek Box"),
      ),
      body: Column(
        children: [
          CheckboxListTile(
              title: Text("hello"),
              checkColor: Colors.red,
              value: is_checked,
              onChanged: (val) {
                setState(() {
                  is_checked = val!;
                  if (is_checked == true) {
                    ans = "hello";
                  } else {
                    ans = "";
                  }
                });
              }),
          Text(
            "$ans",
            style: TextStyle(fontSize: 50),
          ),
        ],
      ),
    );
  }
}
