import 'dart:io';
import 'package:flutter/material.dart';
import 'package:painmate/third.dart';
import 'package:firebase_database/firebase_database.dart';

class SecondScreen extends StatefulWidget {
  final String name, sex, dob, weight, height, q1, q2, q3, q4;
  SecondScreen({
    required this.name,
    required this.sex,
    required this.dob,
    required this.weight,
    required this.height,
    required this.q1,
    required this.q2,
    required this.q3,
    required this.q4,
  });

  @override
  _SecondScreenState createState() => _SecondScreenState(
      name: name,
      sex: sex,
      dob: dob,
      weight: weight,
      height: height,
      q1: q1,
      q2: q2,
      q3: q3,
      q4: q4);
}

class _SecondScreenState extends State<SecondScreen> {
  final ref = FirebaseDatabase.instance.reference();
  final GlobalKey<ScaffoldState> _scaffKey = GlobalKey<ScaffoldState>();
  final String name, sex, dob, weight, height, q1, q2, q3, q4;
  _SecondScreenState(
      {required this.name,
      required this.sex,
      required this.dob,
      required this.weight,
      required this.height,
      required this.q1,
      required this.q2,
      required this.q3,
      required this.q4});

  bool neck = false,
      shoulder = false,
      upper = false,
      lower = false,
      ankle = false,
      knee = false,
      hip = false,
      hand = false,
      elbow = false;

  void _go() async {
    if (!neck &&
        !shoulder &&
        !upper &&
        !lower &&
        !ankle &&
        !knee & !hip &&
        !hand &&
        !elbow) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Please select atleast one portion'),
        ),
      );
      return;
    }
    if (neck) {
      ref.child('Neck/$name').set({
        'Sex': '$sex',
        'Date of Birth': '$dob',
        'Weight': '$weight',
        'Height': '$height',
        'Info 1': '$q1',
        'Info 2': '$q2',
        'Info 3': '$q3',
        'Info 4': '$q4'
      });
    }
    if (shoulder) {
      ref.child('Shoulders/$name').set({
        'Sex': '$sex',
        'Date of Birth': '$dob',
        'Weight': '$weight',
        'Height': '$height',
        'Info 1': '$q1',
        'Info 2': '$q2',
        'Info 3': '$q3',
        'Info 4': '$q4'
      });
    }
    if (upper) {
      ref.child('Upper-Back/$name').set({
        'Sex': '$sex',
        'Date of Birth': '$dob',
        'Weight': '$weight',
        'Height': '$height',
        'Info 1': '$q1',
        'Info 2': '$q2',
        'Info 3': '$q3',
        'Info 4': '$q4'
      });
    }
    if (lower) {
      ref.child('Lower-Back/$name').set({
        'Sex': '$sex',
        'Date of Birth': '$dob',
        'Weight': '$weight',
        'Height': '$height',
        'Info 1': '$q1',
        'Info 2': '$q2',
        'Info 3': '$q3',
        'Info 4': '$q4'
      });
    }
    if (ankle) {
      ref.child('Ankles or Feet/$name').set({
        'Sex': '$sex',
        'Date of Birth': '$dob',
        'Weight': '$weight',
        'Height': '$height',
        'Info 1': '$q1',
        'Info 2': '$q2',
        'Info 3': '$q3',
        'Info 4': '$q4'
      });
    }
    if (knee) {
      ref.child('Knees/$name').set({
        'Sex': '$sex',
        'Date of Birth': '$dob',
        'Weight': '$weight',
        'Height': '$height',
        'Info 1': '$q1',
        'Info 2': '$q2',
        'Info 3': '$q3',
        'Info 4': '$q4'
      });
    }
    if (hip) {
      ref.child('Hips or Thighs or Buttocks/$name').set({
        'Sex': '$sex',
        'Date of Birth': '$dob',
        'Weight': '$weight',
        'Height': '$height',
        'Info 1': '$q1',
        'Info 2': '$q2',
        'Info 3': '$q3',
        'Info 4': '$q4'
      });
    }
    if (hand) {
      ref.child('Wrist or Hands/$name').set({
        'Sex': '$sex',
        'Date of Birth': '$dob',
        'Weight': '$weight',
        'Height': '$height',
        'Info 1': '$q1',
        'Info 2': '$q2',
        'Info 3': '$q3',
        'Info 4': '$q4'
      });
    }
    if (elbow) {
      ref.child('Elbows/$name').set({
        'Sex': '$sex',
        'Date of Birth': '$dob',
        'Weight': '$weight',
        'Height': '$height',
        'Info 1': '$q1',
        'Info 2': '$q2',
        'Info 3': '$q3',
        'Info 4': '$q4'
      });
    }
    try {
      final internet = await InternetAddress.lookup('google.com');
      if (internet.isNotEmpty && internet[0].rawAddress.isNotEmpty) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Third(
              name: name,
              neck: neck,
              shoulder: shoulder,
              upper: upper,
              lower: lower,
              ankle: ankle,
              knee: knee,
              hip: hip,
              hand: hand,
              elbow: elbow,
              ref: ref,
            ),
          ),
        );
      }
    } on SocketException catch (_) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('No Internet Connection!'),
        ),
      );
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffKey,
      body: Align(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset('images/body.png'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Choose your body portion',
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/medback.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.white.withOpacity(0.5), BlendMode.dstATop),
                    ),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: neck,
                            onChanged: (val) {
                              setState(
                                () {
                                  neck = !neck;
                                },
                              );
                            },
                          ),
                          Text(
                            'Neck',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: shoulder,
                            onChanged: (val) {
                              setState(
                                () {
                                  shoulder = !shoulder;
                                },
                              );
                            },
                          ),
                          Text(
                            'Shoulders',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: upper,
                            onChanged: (val) {
                              setState(
                                () {
                                  upper = !upper;
                                },
                              );
                            },
                          ),
                          Text(
                            'Upper Back',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: lower,
                            onChanged: (val) {
                              setState(
                                () {
                                  lower = !lower;
                                },
                              );
                            },
                          ),
                          Text(
                            'Lower Back',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: ankle,
                            onChanged: (val) {
                              setState(
                                () {
                                  ankle = !ankle;
                                },
                              );
                            },
                          ),
                          Text(
                            'Ankles/Feet',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: knee,
                            onChanged: (val) {
                              setState(
                                () {
                                  knee = !knee;
                                },
                              );
                            },
                          ),
                          Text(
                            'Knees',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: hip,
                            onChanged: (val) {
                              setState(
                                () {
                                  hip = !hip;
                                },
                              );
                            },
                          ),
                          Text(
                            'Hips/Thighs/Buttocks',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: hand,
                            onChanged: (val) {
                              setState(
                                () {
                                  hand = !hand;
                                },
                              );
                            },
                          ),
                          Text(
                            'Wrist/Hands',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: elbow,
                            onChanged: (val) {
                              setState(
                                () {
                                  elbow = !elbow;
                                },
                              );
                            },
                          ),
                          Text(
                            'Elbows',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton.icon(
                  onPressed: () => _go(),
                  icon: Icon(Icons.arrow_forward_ios_rounded),
                  label: Text('Go'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Developed by - Bhaskar Narayan | Shiplu Das',
                  style: TextStyle(
                      color: Colors.green[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 10.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
