import 'package:bmicalculator/func/calc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

double calcBMI = double.parse(bmi);

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("결과"),
      ),
      body: Center(
        child: Column(
          children: [
            Column(
              children: [
                const Text(
                  "나의 BMI 지수",
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  calcBMI.toString(),
                  style: const TextStyle(fontSize: 40),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Text(
              "${gradeBMI(calcBMI)}입니다.",
              style: const TextStyle(fontSize: 30),
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_sharp),
              iconSize: 50,
            )
          ],
        ),
      ),
    );
  }
}

String gradeBMI(double bmi) {
  if (bmi < 18.5) {
    return "저체중";
  } else if (bmi < 23) {
    return "정상";
  } else if (bmi < 25) {
    return "과체중";
  } else {
    return "비만";
  }
}
