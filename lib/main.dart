import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 95, 168, 228),
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Text("Ask Me Anything"),
        ),
        body: ballpage(),
      ),
    ),
  );
}

class ballpage extends StatefulWidget {
  const ballpage({super.key});

  @override
  State<ballpage> createState() => _ballpageState();
}

class _ballpageState extends State<ballpage> {
  int num = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Expanded(
      child: TextButton(
        onPressed: () {
          setState(() {
            num = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset("images/ball$num.png"),
      ),
    ));
  }
}
