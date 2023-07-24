import 'package:flutter/material.dart';
import 'dart:math';

void main() {

  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(
          title: Text(
              'Magic Ball Game',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
            ),
          ),
         backgroundColor: Colors.red.shade900,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Text(
                  'Ask A Question',
                style: TextStyle(
                  fontFamily: 'Geosteam-eJap',
                  fontSize: 35,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
            height: 90,
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                )
              ),
            ),
          ),
              MagicBall(),
            ],
        ),
        )
      ),
    ),
  );
}
class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();

}
class _MagicBallState extends State<MagicBall> {
  int ballNumber = 0;

  updateBallImage(){
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
         onPressed: updateBallImage,
          child: Image.asset(
              'Images/magic-8-ball-vectors$ballNumber.png',width: 350, height: 350),
      ),
    );
  }
}



