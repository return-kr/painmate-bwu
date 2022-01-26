import 'dart:io';

import 'package:flutter/material.dart';
import 'package:painmate/helper.dart';
import 'package:painmate/remedy.dart';

class FinalPage extends StatefulWidget {
  var ref;
  final bool neck, shoulder, upper, lower, ankle, knee, hip, hand, elbow;
  final String name;
  FinalPage(
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
  _FinalPageState createState() => _FinalPageState(
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

class _FinalPageState extends State<FinalPage> {
  var ref;
  final bool neck, shoulder, upper, lower, ankle, knee, hip, hand, elbow;
  final String name;
  final GlobalKey<ScaffoldState> _scaffKey = GlobalKey<ScaffoldState>();
  _FinalPageState(
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

  var _scTypeNeck, _scDurationNeck, _scOccurenceNeck, _scPersistenceNeck;
  TextEditingController _neckJobType = TextEditingController();
  TextEditingController _neckWorkDuration = TextEditingController();

  var _scTypeShoulder,
      _scDurationShoulder,
      _scOccurenceShoulder,
      _scPersistenceShoulder;
  TextEditingController _shoulderJobType = TextEditingController();
  TextEditingController _shoulderWorkDuration = TextEditingController();

  var _scTypeUpper, _scDurationUpper, _scOccurenceUpper, _scPersistenceUpper;
  TextEditingController _upperJobType = TextEditingController();
  TextEditingController _upperWorkDuration = TextEditingController();

  var _scTypeLower, _scDurationLower, _scOccurenceLower, _scPersistenceLower;
  TextEditingController _lowerJobType = TextEditingController();
  TextEditingController _lowerWorkDuration = TextEditingController();

  var _scTypeAnkle, _scDurationAnkle, _scOccurenceAnkle, _scPersistenceAnkle;
  TextEditingController _ankleJobType = TextEditingController();
  TextEditingController _ankleWorkDuration = TextEditingController();

  var _scTypeKnee, _scDurationKnee, _scOccurenceKnee, _scPersistenceKnee;
  TextEditingController _kneeJobType = TextEditingController();
  TextEditingController _kneeWorkDuration = TextEditingController();

  var _scTypeHip, _scDurationHip, _scOccurenceHip, _scPersistenceHip;
  TextEditingController _hipJobType = TextEditingController();
  TextEditingController _hipWorkDuration = TextEditingController();

  var _scTypeHand, _scDurationHand, _scOccurenceHand, _scPersistenceHand;
  TextEditingController _handJobType = TextEditingController();
  TextEditingController _handWorkDuration = TextEditingController();

  var _scTypeElbow, _scDurationElbow, _scOccurenceElbow, _scPersistenceElbow;
  TextEditingController _elbowJobType = TextEditingController();
  TextEditingController _elbowWorkDuration = TextEditingController();

  void _remedy() async {
    if (neck) {
      String nkJobType = _neckJobType.text.toString().trim();
      String nkWorkDur = _neckWorkDuration.text.toString().trim();
      String nkType = _scTypeNeck.toString().trim();
      String nkDur = _scDurationNeck.toString().trim();
      String nkOcc = _scOccurenceNeck.toString().trim();
      String nkPer = _scPersistenceNeck.toString().trim();

      print(nkJobType);
      print(nkWorkDur);
      print(nkType);
      print(nkDur);
      print(nkOcc);
      print(nkPer);

      if (nkJobType.isEmpty ||
          nkWorkDur.isEmpty ||
          nkType == 'null' ||
          nkDur == 'null' ||
          nkOcc == 'null' ||
          nkPer == 'null') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('All fields are Mandatory'),
          ),
        );
        return;
      }
      ref.child('Neck/$name/Questions of Second Section').set({
        'Q1': '$nkJobType',
        'Q2': '$nkWorkDur',
        'Q3': '$nkType',
        'Q4': '$nkDur',
        'Q5': '$nkOcc',
        'Q6': '$nkPer'
      });
    }
    if (shoulder) {
      String shJobType = _shoulderJobType.text.toString().trim();
      String shWorkDur = _shoulderWorkDuration.text.toString().trim();
      String shType = _scTypeShoulder.toString().trim();
      String shDur = _scDurationShoulder.toString().trim();
      String shOcc = _scOccurenceShoulder.toString().trim();
      String shPer = _scPersistenceShoulder.toString().trim();
      if (shJobType.isEmpty ||
          shWorkDur.isEmpty ||
          shType == 'null' ||
          shDur == 'null' ||
          shOcc == 'null' ||
          shPer == 'null') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('All fields are Mandatory'),
          ),
        );
        return;
      }
      ref.child('Shoulders/$name/Questions of Second Section').set({
        'Q1': '$shJobType',
        'Q2': '$shWorkDur',
        'Q3': '$shType',
        'Q4': '$shDur',
        'Q5': '$shOcc',
        'Q6': '$shPer'
      });
    }
    if (upper) {
      String upJobType = _upperJobType.text.toString().trim();
      String upWorkDur = _upperWorkDuration.text.toString().trim();
      String upType = _scTypeUpper.toString().trim();
      String upDur = _scDurationUpper.toString().trim();
      String upOcc = _scOccurenceUpper.toString().trim();
      String upPer = _scPersistenceUpper.toString().trim();
      if (upJobType.isEmpty ||
          upWorkDur.isEmpty ||
          upType == 'null' ||
          upDur == 'null' ||
          upOcc == 'null' ||
          upPer == 'null') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('All fields are Mandatory'),
          ),
        );
        return;
      }
      ref.child('Upper-Back/$name/Questions of Second Section').set({
        'Q1': '$upJobType',
        'Q2': '$upWorkDur',
        'Q3': '$upType',
        'Q4': '$upDur',
        'Q5': '$upOcc',
        'Q6': '$upPer'
      });
    }
    if (lower) {
      String loJobType = _lowerJobType.text.toString().trim();
      String loWorkDur = _lowerWorkDuration.text.toString().trim();
      String loType = _scTypeLower.toString().trim();
      String loDur = _scDurationLower.toString().trim();
      String loOcc = _scOccurenceLower.toString().trim();
      String loPer = _scPersistenceLower.toString().trim();
      if (loJobType.isEmpty ||
          loWorkDur.isEmpty ||
          loType == 'null' ||
          loDur == 'null' ||
          loOcc == 'null' ||
          loPer == 'null') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('All fields are Mandatory'),
          ),
        );
        return;
      }
      ref.child('Lower-Back/$name/Questions of Second Section').set({
        'Q1': '$loJobType',
        'Q2': '$loWorkDur',
        'Q3': '$loType',
        'Q4': '$loDur',
        'Q5': '$loOcc',
        'Q6': '$loPer'
      });
    }
    if (ankle) {
      String anJobType = _ankleJobType.text.toString().trim();
      String anWorkDur = _ankleWorkDuration.text.toString().trim();
      String anType = _scTypeAnkle.toString().trim();
      String anDur = _scDurationAnkle.toString().trim();
      String anOcc = _scOccurenceAnkle.toString().trim();
      String anPer = _scPersistenceAnkle.toString().trim();
      if (anJobType.isEmpty ||
          anWorkDur.isEmpty ||
          anType == 'null' ||
          anDur == 'null' ||
          anOcc == 'null' ||
          anPer == 'null') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('All fields are Mandatory'),
          ),
        );
        return;
      }
      ref.child('Ankles or Feet/$name/Questions of Second Section').set({
        'Q1': '$anJobType',
        'Q2': '$anWorkDur',
        'Q3': '$anType',
        'Q4': '$anDur',
        'Q5': '$anOcc',
        'Q6': '$anPer'
      });
    }
    if (knee) {
      String knJobType = _kneeJobType.text.toString().trim();
      String knWorkDur = _kneeWorkDuration.text.toString().trim();
      String knType = _scTypeKnee.toString().trim();
      String knDur = _scDurationKnee.toString().trim();
      String knOcc = _scOccurenceKnee.toString().trim();
      String knPer = _scPersistenceKnee.toString().trim();
      if (knJobType.isEmpty ||
          knWorkDur.isEmpty ||
          knType == 'null' ||
          knDur == 'null' ||
          knOcc == 'null' ||
          knPer == 'null') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('All fields are Mandatory'),
          ),
        );
        return;
      }
      ref.child('Knees/$name/Questions of Second Section').set({
        'Q1': '$knJobType',
        'Q2': '$knWorkDur',
        'Q3': '$knType',
        'Q4': '$knDur',
        'Q5': '$knOcc',
        'Q6': '$knPer'
      });
    }
    if (hip) {
      String hpJobType = _hipJobType.text.toString().trim();
      String hpWorkDur = _hipWorkDuration.text.toString().trim();
      String hpType = _scTypeHip.toString().trim();
      String hpDur = _scDurationHip.toString().trim();
      String hpOcc = _scOccurenceHip.toString().trim();
      String hpPer = _scPersistenceHip.toString().trim();
      if (hpJobType.isEmpty ||
          hpWorkDur.isEmpty ||
          hpType == 'null' ||
          hpDur == 'null' ||
          hpOcc == 'null' ||
          hpPer == 'null') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('All fields are Mandatory'),
          ),
        );
        return;
      }
      ref
          .child('Hips or Thighs or Buttocks/$name/Questions of Second Section')
          .set({
        'Q1': '$hpJobType',
        'Q2': '$hpWorkDur',
        'Q3': '$hpType',
        'Q4': '$hpDur',
        'Q5': '$hpOcc',
        'Q6': '$hpPer'
      });
    }
    if (hand) {
      String hnJobType = _handJobType.text.toString().trim();
      String hnWorkDur = _handWorkDuration.text.toString().trim();
      String hnType = _scTypeHand.toString().trim();
      String hnDur = _scDurationHand.toString().trim();
      String hnOcc = _scOccurenceHand.toString().trim();
      String hnPer = _scPersistenceHand.toString().trim();
      if (hnJobType.isEmpty ||
          hnWorkDur.isEmpty ||
          hnType == 'null' ||
          hnDur == 'null' ||
          hnOcc == 'null' ||
          hnPer == 'null') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('All fields are Mandatory'),
          ),
        );
        return;
      }
      ref.child('Wrist or Hands/$name/Questions of Second Section').set({
        'Q1': '$hnJobType',
        'Q2': '$hnWorkDur',
        'Q3': '$hnType',
        'Q4': '$hnDur',
        'Q5': '$hnOcc',
        'Q6': '$hnPer'
      });
    }
    if (elbow) {
      String ebJobType = _elbowJobType.text.toString().trim();
      String ebWorkDur = _elbowWorkDuration.text.toString().trim();
      String ebType = _scTypeElbow.toString().trim();
      String ebDur = _scDurationElbow.toString().trim();
      String ebOcc = _scOccurenceElbow.toString().trim();
      String ebPer = _scPersistenceElbow.toString().trim();
      if (ebJobType.isEmpty ||
          ebWorkDur.isEmpty ||
          ebType == 'null' ||
          ebDur == 'null' ||
          ebOcc == 'null' ||
          ebPer == 'null') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('All fields are Mandatory'),
          ),
        );
        return;
      }
      ref.child('Elbows/$name/Questions of Second Section').set({
        'Q1': '$ebJobType',
        'Q2': '$ebWorkDur',
        'Q3': '$ebType',
        'Q4': '$ebDur',
        'Q5': '$ebOcc',
        'Q6': '$ebPer'
      });
    }
    try {
      final internet = await InternetAddress.lookup('google.com');
      if (internet.isNotEmpty && internet[0].rawAddress.isNotEmpty) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Remedy(
                neck: neck,
                shoulder: shoulder,
                upper: upper,
                lower: lower,
                ankle: ankle,
                knee: knee,
                hip: hip,
                hand: hand,
                elbow: elbow),
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
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset('images/scale.png'),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Fill-up required details',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/medback.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.white.withOpacity(0.5),
                                    BlendMode.dstATop),
                              ),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                Question(txt: 'Type of Job:'),
                                TextFormField(
                                  controller: _neckJobType,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: "Duration(Hours per Day):"),
                                TextFormField(
                                  controller: _neckWorkDuration,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        'Rating of Pain: (From the above Scale)'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scTypeNeck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scTypeNeck = val;
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
                                      groupValue: _scTypeNeck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scTypeNeck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Moderate'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _scTypeNeck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scTypeNeck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Severe'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: 'Duration of Pain:'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scDurationNeck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scDurationNeck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '0-3 Months'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _scDurationNeck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scDurationNeck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '>3 Months'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: 'Occurence of Pain:'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scOccurenceNeck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scOccurenceNeck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'In time of work'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _scOccurenceNeck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scOccurenceNeck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'After work'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _scOccurenceNeck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scOccurenceNeck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'All time'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: 'Persistence of Pain:'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scPersistenceNeck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceNeck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '5-10 min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _scPersistenceNeck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceNeck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '10-15 min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _scPersistenceNeck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceNeck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '15-30 min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '4',
                                      groupValue: _scPersistenceNeck,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceNeck = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '>30 min'),
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
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset('images/scale.png'),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Fill-up required details',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/medback.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.white.withOpacity(0.5),
                                    BlendMode.dstATop),
                              ),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                Question(txt: 'Type of Job:'),
                                TextFormField(
                                  controller: _shoulderJobType,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: "Duration(Hours per Day):"),
                                TextFormField(
                                  controller: _shoulderWorkDuration,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        'Rating of Pain: (From the above Scale)'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scTypeShoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scTypeShoulder = val;
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
                                      groupValue: _scTypeShoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scTypeShoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Moderate'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _scTypeShoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scTypeShoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Severe'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: 'Duration of Pain:'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scDurationShoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scDurationShoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '0-3 Months'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _scDurationShoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scDurationShoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '>3 Months'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: 'Occurence of Pain:'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scOccurenceShoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scOccurenceShoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'In time of work'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _scOccurenceShoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scOccurenceShoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'After work'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _scOccurenceShoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scOccurenceShoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'All time'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: 'Persistence of Pain:'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scPersistenceShoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceShoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '5-10 min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _scPersistenceShoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceShoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '10-15 min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _scPersistenceShoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceShoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '15-30 min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '4',
                                      groupValue: _scPersistenceShoulder,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceShoulder = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '>30 min'),
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
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset('images/scale.png'),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Fill-up required details',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/medback.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.white.withOpacity(0.5),
                                    BlendMode.dstATop),
                              ),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                Question(txt: 'Type of Job:'),
                                TextFormField(
                                  controller: _upperJobType,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: "Duration(Hours per Day):"),
                                TextFormField(
                                  controller: _upperWorkDuration,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        'Rating of Pain: (From the above Scale)'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scTypeUpper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scTypeUpper = val;
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
                                      groupValue: _scTypeUpper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scTypeUpper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Moderate'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _scTypeUpper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scTypeUpper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Severe'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: 'Duration of Pain:'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scDurationUpper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scDurationUpper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '0-3 Months'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _scDurationUpper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scDurationUpper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '>3 Months'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: 'Occurence of Pain:'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scOccurenceUpper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scOccurenceUpper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'In time of work'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _scOccurenceUpper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scOccurenceUpper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'After work'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _scOccurenceUpper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scOccurenceUpper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'All time'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: 'Persistence of Pain:'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scPersistenceUpper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceUpper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '5-10 min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _scPersistenceUpper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceUpper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '10-15 min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _scPersistenceUpper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceUpper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '15-30 min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '4',
                                      groupValue: _scPersistenceUpper,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceUpper = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '>30 min'),
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
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset('images/scale.png'),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Fill-up required details',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/medback.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.white.withOpacity(0.5),
                                    BlendMode.dstATop),
                              ),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                Question(txt: 'Type of Job:'),
                                TextFormField(
                                  controller: _lowerJobType,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: "Duration(Hours per Day):"),
                                TextFormField(
                                  controller: _lowerWorkDuration,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        'Rating of Pain: (From the above Scale)'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scTypeLower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scTypeLower = val;
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
                                      groupValue: _scTypeLower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scTypeLower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Moderate'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _scTypeLower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scTypeLower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Severe'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: 'Duration of Pain:'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scDurationLower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scDurationLower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '0-3 Months'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _scDurationLower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scDurationLower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '>3 Months'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: 'Occurence of Pain:'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scOccurenceLower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scOccurenceLower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'In time of work'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _scOccurenceLower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scOccurenceLower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'After work'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _scOccurenceLower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scOccurenceLower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'All time'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: 'Persistence of Pain:'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scPersistenceLower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceLower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '5-10 min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _scPersistenceLower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceLower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '10-15 min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _scPersistenceLower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceLower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '15-30 min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '4',
                                      groupValue: _scPersistenceLower,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceLower = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '>30 min'),
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
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset('images/scale.png'),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Fill-up required details',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/medback.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.white.withOpacity(0.5),
                                    BlendMode.dstATop),
                              ),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                Question(txt: 'Type of Job:'),
                                TextFormField(
                                  controller: _ankleJobType,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: "Duration(Hours per Day):"),
                                TextFormField(
                                  controller: _ankleWorkDuration,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        'Rating of Pain: (From the above Scale)'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scTypeAnkle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scTypeAnkle = val;
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
                                      groupValue: _scTypeAnkle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scTypeAnkle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Moderate'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _scTypeAnkle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scTypeAnkle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Severe'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: 'Duration of Pain:'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scDurationAnkle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scDurationAnkle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '0-3 Months'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _scDurationAnkle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scDurationAnkle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '>3 Months'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: 'Occurence of Pain:'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scOccurenceAnkle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scOccurenceAnkle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'In time of work'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _scOccurenceAnkle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scOccurenceAnkle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'After work'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _scOccurenceAnkle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scOccurenceAnkle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'All time'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: 'Persistence of Pain:'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scPersistenceAnkle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceAnkle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '5-10 min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _scPersistenceAnkle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceAnkle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '10-15 min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _scPersistenceAnkle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceAnkle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '15-30 min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '4',
                                      groupValue: _scPersistenceAnkle,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceAnkle = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '>30 min'),
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
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset('images/scale.png'),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Fill-up required details',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/medback.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.white.withOpacity(0.5),
                                    BlendMode.dstATop),
                              ),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                Question(txt: 'Type of Job:'),
                                TextFormField(
                                  controller: _kneeJobType,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: "Duration(Hours per Day):"),
                                TextFormField(
                                  controller: _kneeWorkDuration,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        'Rating of Pain: (From the above Scale)'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scTypeKnee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scTypeKnee = val;
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
                                      groupValue: _scTypeKnee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scTypeKnee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Moderate'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _scTypeKnee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scTypeKnee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Severe'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: 'Duration of Pain:'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scDurationKnee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scDurationKnee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '0-3 Months'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _scDurationKnee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scDurationKnee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '>3 Months'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: 'Occurence of Pain:'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scOccurenceKnee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scOccurenceKnee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'In time of work'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _scOccurenceKnee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scOccurenceKnee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'After work'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _scOccurenceKnee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scOccurenceKnee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'All time'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: 'Persistence of Pain:'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scPersistenceKnee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceKnee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '5-10 min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _scPersistenceKnee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceKnee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '10-15 min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _scPersistenceKnee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceKnee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '15-30 min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '4',
                                      groupValue: _scPersistenceKnee,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceKnee = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '>30 min'),
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
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset('images/scale.png'),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Fill-up required details',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/medback.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.white.withOpacity(0.5),
                                    BlendMode.dstATop),
                              ),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                Question(txt: 'Type of Job:'),
                                TextFormField(
                                  controller: _hipJobType,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: "Duration(Hours per Day):"),
                                TextFormField(
                                  controller: _hipWorkDuration,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        'Rating of Pain: (From the above Scale)'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scTypeHip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scTypeHip = val;
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
                                      groupValue: _scTypeHip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scTypeHip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Moderate'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _scTypeHip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scTypeHip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Severe'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: 'Duration of Pain:'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scDurationHip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scDurationHip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '0-3 Months'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _scDurationHip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scDurationHip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '>3 Months'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: 'Occurence of Pain:'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scOccurenceHip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scOccurenceHip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'In time of work'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _scOccurenceHip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scOccurenceHip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'After work'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _scOccurenceHip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scOccurenceHip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'All time'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: 'Persistence of Pain:'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scPersistenceHip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceHip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '5-10 min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _scPersistenceHip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceHip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '10-15 min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _scPersistenceHip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceHip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '15-30 min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '4',
                                      groupValue: _scPersistenceHip,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceHip = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '>30 min'),
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
                            'Wrist/Hand Trouble',
                            style: TextStyle(
                                color: Colors.blue[800],
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset('images/scale.png'),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Fill-up required details',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/medback.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.white.withOpacity(0.5),
                                    BlendMode.dstATop),
                              ),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                Question(txt: 'Type of Job:'),
                                TextFormField(
                                  controller: _handJobType,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: "Duration(Hours per Day):"),
                                TextFormField(
                                  controller: _handWorkDuration,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        'Rating of Pain: (From the above Scale)'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scTypeHand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scTypeHand = val;
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
                                      groupValue: _scTypeHand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scTypeHand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Moderate'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _scTypeHand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scTypeHand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Severe'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: 'Duration of Pain:'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scDurationHand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scDurationHand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '0-3 Months'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _scDurationHand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scDurationHand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '>3 Months'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: 'Occurence of Pain:'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scOccurenceHand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scOccurenceHand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'In time of work'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _scOccurenceHand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scOccurenceHand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'After work'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _scOccurenceHand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scOccurenceHand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'All time'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: 'Persistence of Pain:'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scPersistenceHand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceHand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '5-10 min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _scPersistenceHand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceHand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '10-15 min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _scPersistenceHand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceHand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '15-30 min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '4',
                                      groupValue: _scPersistenceHand,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceHand = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '>30 min'),
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
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset('images/scale.png'),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Fill-up required details',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/medback.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.white.withOpacity(0.5),
                                    BlendMode.dstATop),
                              ),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                Question(txt: 'Type of Job:'),
                                TextFormField(
                                  controller: _elbowJobType,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: "Duration(Hours per Day):"),
                                TextFormField(
                                  controller: _elbowWorkDuration,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(
                                    txt:
                                        'Rating of Pain: (From the above Scale)'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scTypeElbow,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scTypeElbow = val;
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
                                      groupValue: _scTypeElbow,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scTypeElbow = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Moderate'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _scTypeElbow,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scTypeElbow = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'Severe'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: 'Duration of Pain:'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scDurationElbow,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scDurationElbow = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '0-3 Months'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _scDurationElbow,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scDurationElbow = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '>3 Months'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: 'Occurence of Pain:'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scOccurenceElbow,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scOccurenceElbow = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'In time of work'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _scOccurenceElbow,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scOccurenceElbow = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'After work'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _scOccurenceElbow,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scOccurenceElbow = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: 'All time'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Question(txt: 'Persistence of Pain:'),
                                Row(
                                  children: [
                                    Radio(
                                      value: '1',
                                      groupValue: _scPersistenceElbow,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceElbow = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '5-10 min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '2',
                                      groupValue: _scPersistenceElbow,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceElbow = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '10-15 min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '3',
                                      groupValue: _scPersistenceElbow,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceElbow = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '15-30 min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: '4',
                                      groupValue: _scPersistenceElbow,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _scPersistenceElbow = val;
                                          },
                                        );
                                      },
                                    ),
                                    Answer(txt: '>30 min'),
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
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton.icon(
                  onPressed: () => _remedy(),
                  icon: Icon(Icons.medical_services_rounded),
                  label: Text('Get Remedy'),
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
