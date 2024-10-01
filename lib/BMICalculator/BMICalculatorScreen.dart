import 'package:flutter/material.dart';
import 'package:flutter_project_2/BMICalculator/BMIResultScreen.dart';

class BMICalculatorScreen extends StatefulWidget {
  const BMICalculatorScreen({super.key});

  @override
  State<BMICalculatorScreen> createState() => _BMICalculatorScreenState();
}

class _BMICalculatorScreenState extends State<BMICalculatorScreen> {
  Color backGroundColor = const Color(0xFF0A0E21);
  // double _currentSliderValue = 20;
  int _weightValue = 50;
  double _heightValue = 120;
  int _ageValue = 20;
  bool _isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        title: const Text(
          'MBI Calculator',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isMale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            border: _isMale ? Border.all(width: 1, color: Colors.blue) : Border() ,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.male,
                                  color: Colors.white,
                                  size: 100,
                                ),
                                Text(
                                  'MALE',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            _isMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            border:!_isMale ? Border.all(width: 1, color: Colors.blue) : Border() ,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.female,
                                  color: Colors.white,
                                  size: 100,
                                ),
                                Text(
                                  'FEMALE',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    color: Colors.white10,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              'HEIGHT',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'CM',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '${_heightValue.round()}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.white),
                        ),
                        Slider(
                          value: _heightValue,
                          max: 220,
                          label: _heightValue.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              _heightValue = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'WEIGHT',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                '$_weightValue',
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          _weightValue--;
                                        });
                                      },
                                      child: const Icon(Icons.remove),
                                      mini: true,
                                      shape: const CircleBorder(),
                                      heroTag: 1,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          _weightValue++;
                                        });
                                      },
                                      child: const Icon(Icons.add),
                                      mini: true,
                                      shape: const CircleBorder(),
                                      heroTag: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ), //Weight
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'AGE',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                '$_ageValue',
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          _ageValue--;
                                        });
                                      },
                                      child: const Icon(Icons.remove),
                                      mini: true,
                                      shape: const CircleBorder(),
                                      heroTag: 1,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          _ageValue++;
                                        });
                                      },
                                      child: const Icon(Icons.add),
                                      mini: true,
                                      shape: const CircleBorder(),
                                      heroTag: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(12),
                  // ),
                  width: double.infinity,
                  height: 84,
                  color: Colors.red,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BMIResultScreen(
                                  weight: _weightValue,
                                  height: _heightValue,
                                  gender: _isMale ? 'MALE' : 'FEMALE',
                                  age: _ageValue)));
                    },
                    child: const Text(
                      'CALCULATE',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
