import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  BMIResultScreen(
      {super.key,
      required this.weight,
      required this.age,
      required this.gender,
      required this.height});
  final Color backGroundColor = const Color(0xFF0A0E21);
  final int weight;
  final int age;
  final double height;
  final String gender;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        title: const Text(
          'MBI Result',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Weight: ${weight}',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
              ),
              Text('Height: ${height.round()}',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),),
              Text('Age: ${age}',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),),
              Text('Gender: ${gender}',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),),
            ],
          ),
        ),
      ),
    );
  }
}
