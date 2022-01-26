import 'dart:io';

import 'package:flutter/material.dart';
import 'package:painmate/fourth.dart';
import 'package:painmate/helper.dart';

class Third extends StatefulWidget {
  final String name;
  var ref;
  final bool neck, shoulder, upper, lower, ankle, knee, hip, hand, elbow;
  Third(
      {required this.name,
      required this.neck,
      required this.shoulder,
      required this.upper,
      required this.lower,
      required this.ankle,
      required this.knee,
      required this.hip,
      required this.hand,
      required this.elbow,
      required this.ref});

  @override
  _ThirdState createState() => _ThirdState(
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
      ref: ref);
}

class _ThirdState extends State<Third> {
  var ref;
  final GlobalKey<ScaffoldState> _scaffKey = GlobalKey<ScaffoldState>();

  final String name;
  final bool neck, shoulder, upper, lower, ankle, knee, hip, hand, elbow;

  var _1Neck, _2Neck, _2aNeck, _3Neck, _4Neck;
  TextEditingController _2NeckOther = TextEditingController();

  var _1Shoulder, _2Shoulder, _2aShoulder, _3Shoulder, _4Shoulder;
  TextEditingController _2ShoulderOther = TextEditingController();

  var _1Upper, _2Upper, _2aUpper, _3Upper, _4Upper;
  TextEditingController _2UpperOther = TextEditingController();

  var _1Lower, _2Lower, _2aLower, _3Lower, _4Lower;
  TextEditingController _2LowerOther = TextEditingController();

  var _1Ankle, _2Ankle, _2aAnkle, _3Ankle, _4Ankle;
  TextEditingController _2AnkleOther = TextEditingController();

  var _1Knee, _2Knee, _2aKnee, _3Knee, _4Knee;
  TextEditingController _2KneeOther = TextEditingController();

  var _1Hip, _2Hip, _2aHip, _3Hip, _4Hip;
  TextEditingController _2HipOther = TextEditingController();

  var _1Hand, _2Hand, _2aHand, _3Hand, _4Hand;
  TextEditingController _2HandOther = TextEditingController();

  var _1Elbow, _2Elbow, _2aElbow, _3Elbow, _4Elbow;
  TextEditingController _2ElbowOther = TextEditingController();

  _ThirdState(
      {required this.name,
      required this.neck,
      required this.shoulder,
      required this.upper,
      required this.lower,
      required this.ankle,
      required this.knee,
      required this.hip,
      required this.hand,
      required this.elbow,
      required this.ref});

  void _next() async {
    if (neck) {
      String neck1 = _1Neck.toString().trim();
      String neck2 = _2Neck.toString().trim();
      String neck2a = _2aNeck.toString().trim();
      String neckOther = _2NeckOther.text.toString().trim();
      String neck3 = _3Neck.toString().trim();
      String neck4 = _4Neck.toString().trim();
      print(neckOther.length);
      if (neck1 == 'null' ||
          neck2 == 'null' ||
          neck2a == 'null' ||
          neck3 == 'null' ||
          neck4 == 'null' ||
          (neck2 == '5' && neckOther.length == 0)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('All fields are Mandatory'),
          ),
        );
        return;
      }
      ref.child('Neck/$name/Questions of First Section').set({
        'Q1': '$neck1',
        'Q2': '$neck2' == '5' ? '$neckOther' : '$neck2',
        'Q2a': '$neck2a',
        'Q3': '$neck3',
        'Q4': '$neck4',
      });
    }
    if (shoulder) {
      String sh1 = _1Shoulder.toString().trim();
      String sh2 = _2Shoulder.toString().trim();
      String sh2a = _2aShoulder.toString().trim();
      String sh3 = _3Shoulder.toString().trim();
      String sh4 = _4Shoulder.toString().trim();
      String shOther = _2ShoulderOther.text.toString().trim();
      if (sh1 == 'null' ||
          sh2 == 'null' ||
          sh2a == 'null' ||
          sh3 == 'null' ||
          sh4 == 'null' ||
          (sh2 == '5' && shOther.length == 0)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('All fields are Mandatory'),
          ),
        );
        return;
      }
      ref.child('Shoulders/$name/Questions of First Section').set({
        'Q1': '$sh1',
        'Q2': '$sh2' == '5' ? '$shOther' : '$sh2',
        'Q2a': '$sh2a',
        'Q3': '$sh3',
        'Q4': '$sh4',
      });
    }
    if (upper) {
      String up1 = _1Upper.toString().trim();
      String up2 = _2Upper.toString().trim();
      String up2a = _2aUpper.toString().trim();
      String upOther = _2UpperOther.text.toString().trim();
      String up3 = _3Upper.toString().trim();
      String up4 = _4Upper.toString().trim();
      if (up1 == 'null' ||
          up2 == 'null' ||
          up2a == 'null' ||
          up3 == 'null' ||
          up4 == 'null' ||
          (up2 == '5' && upOther.length == 0)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('All fields are Mandatory'),
          ),
        );
        return;
      }
      ref.child('Upper-Back/$name/Questions of First Section').set({
        'Q1': '$up1',
        'Q2': '$up2' == '5' ? '$upOther' : '$up2',
        'Q2a': '$up2a',
        'Q3': '$up3',
        'Q4': '$up4',
      });
    }
    if (lower) {
      String lo1 = _1Lower.toString().trim();
      String lo2 = _2Lower.toString().trim();
      String lo2a = _2aLower.toString().trim();
      String loOther = _2LowerOther.text.toString().trim();
      String lo3 = _3Lower.toString().trim();
      String lo4 = _4Lower.toString().trim();
      if (lo1 == 'null' ||
          lo2 == 'null' ||
          lo2a == 'null' ||
          lo3 == 'null' ||
          lo4 == 'null' ||
          (lo2 == '5' && loOther.length == 0)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('All fields are Mandatory'),
          ),
        );
        return;
      }
      ref.child('Lower-Back/$name/Questions of First Section').set({
        'Q1': '$lo1',
        'Q2': '$lo2' == '5' ? '$loOther' : '$lo2',
        'Q2a': '$lo2a',
        'Q3': '$lo3',
        'Q4': '$lo4',
      });
    }
    if (ankle) {
      String an1 = _1Ankle.toString().trim();
      String an2 = _2Ankle.toString().trim();
      String an2a = _2aAnkle.toString().trim();
      String anOther = _2AnkleOther.text.toString().trim();
      String an3 = _3Ankle.toString().trim();
      String an4 = _4Ankle.toString().trim();
      if (an1 == 'null' ||
          an2 == 'null' ||
          an2a == 'null' ||
          an3 == 'null' ||
          an4 == 'null' ||
          (an2 == '5' && anOther.length == 0)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('All fields are Mandatory'),
          ),
        );
        return;
      }
      ref.child('Ankles or Feet/$name/Questions of First Section').set({
        'Q1': '$an1',
        'Q2': '$an2' == '5' ? '$anOther' : '$an2',
        'Q2a': '$an2a',
        'Q3': '$an3',
        'Q4': '$an4',
      });
    }
    if (knee) {
      String kn1 = _1Knee.toString().trim();
      String kn2 = _2Knee.toString().trim();
      String kn2a = _2aKnee.toString().trim();
      String kn3 = _3Knee.toString().trim();
      String knOther = _2KneeOther.text.toString().trim();
      String kn4 = _4Knee.toString().trim();
      if (kn1 == 'null' ||
          kn2 == 'null' ||
          kn2a == 'null' ||
          kn3 == 'null' ||
          kn4 == 'null' ||
          (kn2 == '5' && knOther.length == 0)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('All fields are Mandatory'),
          ),
        );
        return;
      }
      ref.child('Knees/$name/Questions of First Section').set({
        'Q1': '$kn1',
        'Q2': '$kn2' == '5' ? '$knOther' : '$kn2',
        'Q2a': '$kn2a',
        'Q3': '$kn3',
        'Q4': '$kn4',
      });
    }
    if (hip) {
      String hp1 = _1Hip.toString().trim();
      String hp2 = _2Hip.toString().trim();
      String hp2a = _2aHip.toString().trim();
      String hp3 = _3Hip.toString().trim();
      String hpOther = _2HipOther.text.toString().trim();
      String hp4 = _4Hip.toString().trim();
      if (hp1 == 'null' ||
          hp2 == 'null' ||
          hp2a == 'null' ||
          hp3 == 'null' ||
          hp4 == 'null' ||
          (hp2 == '5' && hpOther.length == 0)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('All fields are Mandatory'),
          ),
        );
        return;
      }
      ref
          .child('Hips or Thighs or Buttocks/$name/Questions of First Section')
          .set({
        'Q1': '$hp1',
        'Q2': '$hp2' == '5' ? '$hpOther' : '$hp2',
        'Q2a': '$hp2a',
        'Q3': '$hp3',
        'Q4': '$hp4',
      });
    }
    if (hand) {
      String hn1 = _1Hand.toString().trim();
      String hn2 = _2Hand.toString().trim();
      String hn2a = _2aHand.toString().trim();
      String hn3 = _3Hand.toString().trim();
      String hnOther = _2HandOther.text.toString().trim();
      String hn4 = _4Hand.toString().trim();
      if (hn1 == 'null' ||
          hn2 == 'null' ||
          hn2a == 'null' ||
          hn3 == 'null' ||
          hn4 == 'null' ||
          (hn2 == '5' && hnOther.length == 0)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('All fields are Mandatory'),
          ),
        );
        return;
      }
      ref.child('Wrist or Hands/$name/Questions of First Section').set({
        'Q1': '$hn1',
        'Q2': '$hn2' == '5' ? '$hnOther' : '$hn2',
        'Q2a': '$hn2a',
        'Q3': '$hn3',
        'Q4': '$hn4',
      });
    }
    if (elbow) {
      String el1 = _1Elbow.toString().trim();
      String el2 = _2Elbow.toString().trim();
      String el2a = _2aElbow.toString().trim();
      String el3 = _3Elbow.toString().trim();
      String elOther = _2ElbowOther.text.toString().trim();
      String el4 = _4Elbow.toString().trim();
      if (el1 == 'null' ||
          el2 == 'null' ||
          el2a == 'null' ||
          el3 == 'null' ||
          el4 == 'null' ||
          (el2 == '5' && elOther.length == 0)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('All fields are Mandatory'),
          ),
        );
        return;
      }
      ref.child('Elbows/$name/Questions of First Section').set({
        'Q1': '$el1',
        'Q2': '$el2' == '5' ? '$elOther' : '$el2',
        'Q2a': '$el2a',
        'Q3': '$el3',
        'Q4': '$el4',
      });
    }
    try {
      final internet = await InternetAddress.lookup('google.com');
      if (internet.isNotEmpty && internet[0].rawAddress.isNotEmpty) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => FinalPage(
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
                ref: ref),
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
                neck
                    ? Column(
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Neck Trouble',
                            style: TextStyle(
                                color: Colors.blue[800],
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Answer the followings',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0),
                          ),
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/long.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.white.withOpacity(0.1),
                                    BlendMode.dstATop),
                              ),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                Question(
                                    txt:
                                        '1.	Have you ever experienced any neck injury?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _1Neck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _1Neck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Yes'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _1Neck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _1Neck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'No'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt: '2a. Was the injury at workplace?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _2aNeck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2aNeck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Yes'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _2aNeck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2aNeck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'No'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        '2.	Which of the following is related with your neck problem?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _2Neck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Neck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Accident'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _2Neck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Neck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Sporting activity'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _2Neck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Neck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Activity at home'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '4',
                                      groupValue: _2Neck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Neck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Activity at work'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '5',
                                      groupValue: _2Neck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Neck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Other'),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, right: 15.0),
                                  child: TextFormField(
                                    controller: _2NeckOther,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'If Others then specify'),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        '3.	In worst condition filling of pain?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _3Neck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _3Neck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Mild'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _3Neck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _3Neck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Severe'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _3Neck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _3Neck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Very Very Severe'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        '4.	Frequencies of your neck problem?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _4Neck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Neck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Daily'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _4Neck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Neck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One or more times a week'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _4Neck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Neck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One or more times a month'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '4',
                                      groupValue: _4Neck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Neck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One or more times a year'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '5',
                                      groupValue: _4Neck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Neck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(
                                        txt:
                                            'One or more times every few years'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '6',
                                      groupValue: _4Neck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Neck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One episode of trouble only'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    : SizedBox(
                        height: 0.0,
                      ),
                shoulder
                    ? Column(
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Shoulders Trouble',
                            style: TextStyle(
                                color: Colors.blue[800],
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Answer the followings',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0),
                          ),
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/long.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.white.withOpacity(0.1),
                                    BlendMode.dstATop),
                              ),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                Question(
                                    txt:
                                        '1. Have you ever experienced any shoulder injury? '),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _1Shoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _1Shoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Yes'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _1Shoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _1Shoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'No'),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Question(
                                    txt: '2a. Was the injury at workplace?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _2aShoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2aShoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Yes'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _2aShoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2aShoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'No'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        '2. Which of the following is related with your shoulder problem?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _2Shoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Shoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Accident'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _2Shoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Shoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Sporting Activity'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _2Shoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Shoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Activity at Home'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '4',
                                      groupValue: _2Shoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Shoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Activity at Work'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '5',
                                      groupValue: _2Shoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Shoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Others'),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, right: 15.0),
                                  child: TextFormField(
                                    controller: _2ShoulderOther,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'If Others then specify'),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        '3. In worst condition filling of pain?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _3Shoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _3Shoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Mild'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _3Shoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _3Shoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Severe'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _3Shoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _3Shoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Very Very Severe'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        '4. Frequencies of your shoulder problem?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _4Shoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Shoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Daily'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _4Shoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Shoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One or more times a week'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _4Shoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Shoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One or more times a month'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '4',
                                      groupValue: _4Shoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Shoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One or more times a year'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '5',
                                      groupValue: _4Shoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Shoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(
                                        txt:
                                            'One or more times every few years'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '6',
                                      groupValue: _4Shoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Shoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One episode of trouble only'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    : SizedBox(
                        height: 0.0,
                      ),
                upper
                    ? Column(
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Upper-Back Trouble',
                            style: TextStyle(
                                color: Colors.blue[800],
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Answer the followings',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0),
                          ),
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/long.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.white.withOpacity(0.1),
                                    BlendMode.dstATop),
                              ),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                Question(
                                    txt:
                                        '1. Have you ever experienced any upper back injury?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _1Upper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _1Upper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Yes'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _1Upper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _1Upper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'No'),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Question(
                                    txt: '2a. Was the injury at workplace?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _2aUpper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2aUpper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Yes'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _2aUpper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2aUpper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'No'),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Question(
                                    txt:
                                        '2. Which of the following is related with your upper back problem?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _2Upper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Upper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Accident'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _2Upper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Upper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Sporting activity'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _2Upper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Upper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Activity at home'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '4',
                                      groupValue: _2Upper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Upper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Activity at work'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '5',
                                      groupValue: _2Upper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Upper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Other'),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, right: 15.0),
                                  child: TextFormField(
                                    controller: _2UpperOther,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'If Others then specify'),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        '3. In worst condition filling of pain?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _3Upper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _3Upper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Mild'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _3Upper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _3Upper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Severe'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _3Upper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _3Upper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Very Very Severe'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        '4. Frequencies of your upper back problem?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _4Upper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Upper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Daily'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _4Upper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Upper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One or more times a week'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _4Upper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Upper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One or more times a month'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '4',
                                      groupValue: _4Upper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Upper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One or more times a year'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '5',
                                      groupValue: _4Upper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Upper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(
                                        txt:
                                            'One or more times every few years'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '6',
                                      groupValue: _4Upper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Upper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One episode of trouble only'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    : SizedBox(
                        height: 0.0,
                      ),
                lower
                    ? Column(
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Lower-Back Trouble',
                            style: TextStyle(
                                color: Colors.blue[800],
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Answer the followings',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0),
                          ),
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/long.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.white.withOpacity(0.1),
                                    BlendMode.dstATop),
                              ),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                Question(
                                    txt:
                                        '1. Have you ever experienced any low back injury?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _1Lower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _1Lower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Yes'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _1Lower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _1Lower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'No'),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Question(
                                    txt: '2a. Was the injury at workplace?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _2aLower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2aLower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Yes'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _2aLower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2aLower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'No'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        '2. Which of the following is related with your low back problem'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _2Lower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Lower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Accident'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _2Lower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Lower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Sporting activity'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _2Lower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Lower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Activity at home'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '4',
                                      groupValue: _2Lower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Lower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Activity at work'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '5',
                                      groupValue: _2Lower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Lower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Other'),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, right: 15.0),
                                  child: TextFormField(
                                    controller: _2LowerOther,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'If Others then specify'),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        '3. In worst condition filling of pain?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _3Lower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _3Lower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Mild'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _3Lower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _3Lower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Severe'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _3Lower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _3Lower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Very Very Severe'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        '4. Frequencies of your low back problem?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _4Lower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Lower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Daily'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _4Lower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Lower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One or more times a week'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _4Lower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Lower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One or more times a month'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '4',
                                      groupValue: _4Lower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Lower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One or more times a year'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '5',
                                      groupValue: _4Lower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Lower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(
                                        txt:
                                            'One or more times every few years'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '6',
                                      groupValue: _4Lower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Lower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One episode of trouble only'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    : SizedBox(
                        height: 0.0,
                      ),
                ankle
                    ? Column(
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Ankles/Feet Trouble',
                            style: TextStyle(
                                color: Colors.blue[800],
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Answer the followings',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0),
                          ),
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/long.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.white.withOpacity(0.1),
                                    BlendMode.dstATop),
                              ),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                Question(
                                    txt:
                                        '1. Have you ever experienced any ankle/feet injury?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _1Ankle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _1Ankle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Yes'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _1Ankle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _1Ankle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'No'),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Question(
                                    txt: '2a. Was the injury at workplace?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _2aAnkle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2aAnkle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Yes'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _2aAnkle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2aAnkle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'No'),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Question(
                                    txt:
                                        '2. Which of the following is related with your ankles/feet problem?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _2Ankle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Ankle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Accident'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _2Ankle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Ankle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Sporting activity'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _2Ankle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Ankle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Activity at home'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '4',
                                      groupValue: _2Ankle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Ankle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Activity at work'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '5',
                                      groupValue: _2Ankle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Ankle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Other'),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, right: 15.0),
                                  child: TextFormField(
                                    controller: _2AnkleOther,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'If Others then specify'),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        '3. In worst condition filling of pain?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _3Ankle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _3Ankle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Mild'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _3Ankle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _3Ankle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Severe'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _3Ankle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _3Ankle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Very Very Severe'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        '4. Frequencies of your ankles/feet problem?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _4Ankle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Ankle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Daily'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _4Ankle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Ankle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One or more times a week'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _4Ankle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Ankle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One or more times a month'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '4',
                                      groupValue: _4Ankle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Ankle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One or more times a year'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '5',
                                      groupValue: _4Ankle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Ankle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(
                                        txt:
                                            'One or more times every few years'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '6',
                                      groupValue: _4Ankle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Ankle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One episode of trouble only'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    : SizedBox(
                        height: 0.0,
                      ),
                knee
                    ? Column(
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Knees Trouble',
                            style: TextStyle(
                                color: Colors.blue[800],
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Answer the followings',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0),
                          ),
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/long.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.white.withOpacity(0.1),
                                    BlendMode.dstATop),
                              ),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                Question(
                                    txt:
                                        '1. Have you ever experienced any knees injury?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _1Knee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _1Knee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Yes'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _1Knee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _1Knee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'No'),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Question(
                                    txt: '2a. Was the injury at workplace?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _2aKnee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2aKnee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Yes'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _2aKnee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2aKnee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'No'),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Question(
                                    txt:
                                        '2. Which of the following is related with your knees problem?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _2Knee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Knee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Accident'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _2Knee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Knee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Sporting activity'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _2Knee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Knee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Activity at home'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '4',
                                      groupValue: _2Knee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Knee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Activity at work'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '5',
                                      groupValue: _2Knee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Knee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Other'),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, right: 15.0),
                                  child: TextFormField(
                                    controller: _2KneeOther,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'If Others then specify'),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        '3. In worst condition filling of pain?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _3Knee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _3Knee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Mild'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _3Knee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _3Knee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Severe'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _3Knee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _3Knee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Very Very Severe'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        '4. Frequencies of your knees problem?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _4Knee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Knee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Daily'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _4Knee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Knee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One or more times a week'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _4Knee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Knee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One or more times a month'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '4',
                                      groupValue: _4Knee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Knee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One or more times a year'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '5',
                                      groupValue: _4Knee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Knee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(
                                        txt:
                                            'One or more times every few years'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '6',
                                      groupValue: _4Knee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Knee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One episode of trouble only'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    : SizedBox(
                        height: 0.0,
                      ),
                hip
                    ? Column(
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Hips/Thighs/Buttocks Trouble',
                            style: TextStyle(
                                color: Colors.blue[800],
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Answer the followings',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0),
                          ),
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/long.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.white.withOpacity(0.1),
                                    BlendMode.dstATop),
                              ),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                Question(
                                    txt:
                                        '1. Have you ever experienced any injury?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _1Hip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _1Hip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Yes'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _1Hip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _1Hip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'No'),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Question(
                                    txt: '2a. Was the injury at workplace?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _2aHip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2aHip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Yes'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _2aHip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2aHip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'No'),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Question(
                                    txt:
                                        '2. Which of the following is related with your Hips/ Thighs/ Buttocks  problem?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _2Hip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Hip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Accident'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _2Hip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Hip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Sporting activity'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _2Hip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Hip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Activity at home'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '4',
                                      groupValue: _2Hip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Hip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Activity at work'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '5',
                                      groupValue: _2Hip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Hip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Other'),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, right: 15.0),
                                  child: TextFormField(
                                    controller: _2HipOther,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'If Others then specify'),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        '3. In worst condition filling of pain?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _3Hip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _3Hip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Mild'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _3Hip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _3Hip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Severe'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _3Hip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _3Hip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Very Very Severe'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        '4. Frequencies of your Hips/ Thighs/ Buttocks  problem?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _4Hip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Hip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Daily'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _4Hip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Hip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One or more times a week'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _4Hip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Hip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One or more times a month'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '4',
                                      groupValue: _4Hip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Hip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One or more times a year'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '5',
                                      groupValue: _4Hip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Hip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(
                                        txt:
                                            'One or more times every few years'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '6',
                                      groupValue: _4Hip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Hip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One episode of trouble only'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    : SizedBox(
                        height: 0.0,
                      ),
                hand
                    ? Column(
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Wrist/Hands Trouble',
                            style: TextStyle(
                                color: Colors.blue[800],
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Answer the followings',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0),
                          ),
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/long.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.white.withOpacity(0.1),
                                    BlendMode.dstATop),
                              ),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                Question(
                                    txt:
                                        '1. Have you ever experienced any Wrist/ hand injury?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _1Hand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _1Hand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Yes'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _1Hand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _1Hand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'No'),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Question(
                                    txt: '2a. Was the injury at workplace?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _2aHand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2aHand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Yes'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _2aHand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2aHand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'No'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        '2. Which of the following is related with your Wrist/ hand problem?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _2Hand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Hand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Accident'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _2Hand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Hand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Sporting activity'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _2Hand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Hand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Activity at home'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '4',
                                      groupValue: _2Hand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Hand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Activity at work'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '5',
                                      groupValue: _2Hand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _2Hand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Other'),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, right: 15.0),
                                  child: TextFormField(
                                    controller: _2HandOther,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'If Others then specify'),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        '3. In worst condition filling of pain?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _3Hand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _3Hand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Mild'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _3Hand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _3Hand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Severe'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _3Hand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _3Hand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Very Very Severe'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        '4. Frequencies of your Wrist/ hand problem?'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _4Hand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Hand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Daily'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _4Hand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Hand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One or more times a week'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _4Hand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Hand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One or more times a month'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '4',
                                      groupValue: _4Hand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Hand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One or more times a year'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '5',
                                      groupValue: _4Hand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Hand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(
                                        txt:
                                            'One or more times every few years'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '6',
                                      groupValue: _4Hand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _4Hand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'One episode of trouble only'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    : SizedBox(
                        height: 0.0,
                      ),
                elbow
                    ? Column(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Elbows Trouble',
                                style: TextStyle(
                                    color: Colors.blue[800],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.0),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Answer the followings',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23.0),
                              ),
                              Container(
                                padding: const EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/long.jpg'),
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                        Colors.white.withOpacity(0.1),
                                        BlendMode.dstATop),
                                  ),
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20.0),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Question(
                                        txt:
                                            '1. Have you ever experienced any elbow injury?'),
                                    Row(
                                      children: [
                                        Radio(
                                          value: '1',
                                          groupValue: _1Elbow,
                                          onChanged: (val) {
                                            setState(
                                              () {
                                                _1Elbow = val;
                                              },
                                            );
                                          },
                                        ),
                                        Answer(txt: 'Yes'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                          value: '2',
                                          groupValue: _1Elbow,
                                          onChanged: (val) {
                                            setState(
                                              () {
                                                _1Elbow = val;
                                              },
                                            );
                                          },
                                        ),
                                        Answer(txt: 'No'),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Question(
                                        txt:
                                            '2a. Was the injury at workplace?'),
                                    Row(
                                      children: [
                                        Radio(
                                          value: '1',
                                          groupValue: _2aElbow,
                                          onChanged: (val) {
                                            setState(
                                              () {
                                                _2aElbow = val;
                                              },
                                            );
                                          },
                                        ),
                                        Answer(txt: 'Yes'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                          value: '2',
                                          groupValue: _2aElbow,
                                          onChanged: (val) {
                                            setState(
                                              () {
                                                _2aElbow = val;
                                              },
                                            );
                                          },
                                        ),
                                        Answer(txt: 'No'),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Question(
                                        txt:
                                            '2. Which of the following is related with your elbow problem?'),
                                    Row(
                                      children: [
                                        Radio(
                                          value: '1',
                                          groupValue: _2Elbow,
                                          onChanged: (val) {
                                            setState(
                                              () {
                                                _2Elbow = val;
                                              },
                                            );
                                          },
                                        ),
                                        Answer(txt: 'Accident'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                          value: '2',
                                          groupValue: _2Elbow,
                                          onChanged: (val) {
                                            setState(
                                              () {
                                                _2Elbow = val;
                                              },
                                            );
                                          },
                                        ),
                                        Answer(txt: 'Sporting activity'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                          value: '3',
                                          groupValue: _2Elbow,
                                          onChanged: (val) {
                                            setState(
                                              () {
                                                _2Elbow = val;
                                              },
                                            );
                                          },
                                        ),
                                        Answer(txt: 'Activity at home'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                          value: '4',
                                          groupValue: _2Elbow,
                                          onChanged: (val) {
                                            setState(
                                              () {
                                                _2Elbow = val;
                                              },
                                            );
                                          },
                                        ),
                                        Answer(txt: 'Activity at work'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                          value: '5',
                                          groupValue: _2Elbow,
                                          onChanged: (val) {
                                            setState(
                                              () {
                                                _2Elbow = val;
                                              },
                                            );
                                          },
                                        ),
                                        Answer(txt: 'Other'),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, right: 15.0),
                                      child: TextFormField(
                                        controller: _2ElbowOther,
                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: 'If Others then specify'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Question(
                                        txt:
                                            '3. In worst condition filling of pain?'),
                                    Row(
                                      children: [
                                        Radio(
                                          value: '1',
                                          groupValue: _3Elbow,
                                          onChanged: (val) {
                                            setState(
                                              () {
                                                _3Elbow = val;
                                              },
                                            );
                                          },
                                        ),
                                        Answer(txt: 'Mild'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                          value: '2',
                                          groupValue: _3Elbow,
                                          onChanged: (val) {
                                            setState(
                                              () {
                                                _3Elbow = val;
                                              },
                                            );
                                          },
                                        ),
                                        Answer(txt: 'Severe'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                          value: '3',
                                          groupValue: _3Elbow,
                                          onChanged: (val) {
                                            setState(
                                              () {
                                                _3Elbow = val;
                                              },
                                            );
                                          },
                                        ),
                                        Answer(txt: 'Very Very Severe'),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Question(
                                        txt:
                                            '4. Frequencies of your elbow problem?'),
                                    Row(
                                      children: [
                                        Radio(
                                          value: '1',
                                          groupValue: _4Elbow,
                                          onChanged: (val) {
                                            setState(
                                              () {
                                                _4Elbow = val;
                                              },
                                            );
                                          },
                                        ),
                                        Answer(txt: 'Daily'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                          value: '2',
                                          groupValue: _4Elbow,
                                          onChanged: (val) {
                                            setState(
                                              () {
                                                _4Elbow = val;
                                              },
                                            );
                                          },
                                        ),
                                        Answer(txt: 'One or more times a week'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                          value: '3',
                                          groupValue: _4Elbow,
                                          onChanged: (val) {
                                            setState(
                                              () {
                                                _4Elbow = val;
                                              },
                                            );
                                          },
                                        ),
                                        Answer(
                                            txt: 'One or more times a month'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                          value: '4',
                                          groupValue: _4Elbow,
                                          onChanged: (val) {
                                            setState(
                                              () {
                                                _4Elbow = val;
                                              },
                                            );
                                          },
                                        ),
                                        Answer(txt: 'One or more times a year'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                          value: '5',
                                          groupValue: _4Elbow,
                                          onChanged: (val) {
                                            setState(
                                              () {
                                                _4Elbow = val;
                                              },
                                            );
                                          },
                                        ),
                                        Answer(
                                            txt:
                                                'One or more times every few years'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                          value: '6',
                                          groupValue: _4Elbow,
                                          onChanged: (val) {
                                            setState(
                                              () {
                                                _4Elbow = val;
                                              },
                                            );
                                          },
                                        ),
                                        Answer(
                                            txt: 'One episode of trouble only'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    : SizedBox(
                        height: 0.0,
                      ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton.icon(
                  onPressed: () => _next(),
                  icon: Icon(Icons.arrow_forward_ios_rounded),
                  label: Text('Next'),
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
