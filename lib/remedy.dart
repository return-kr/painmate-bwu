import 'package:flutter/material.dart';
import 'package:painmate/helper.dart';
import 'package:painmate/main.dart';

class Remedy extends StatelessWidget {
  final bool neck, shoulder, upper, lower, ankle, knee, hip, hand, elbow;
  Remedy(
      {required this.neck,
      required this.shoulder,
      required this.upper,
      required this.lower,
      required this.ankle,
      required this.knee,
      required this.hip,
      required this.hand,
      required this.elbow});

  void _home(BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => MainScreen(),
        ),
        (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                neck
                    ? NeckRemedy()
                    : SizedBox(
                        height: 0.0,
                      ),
                shoulder
                    ? ShoulderRemedy()
                    : SizedBox(
                        height: 0.0,
                      ),
                upper
                    ? BackRemedy()
                    : SizedBox(
                        height: 0.0,
                      ),
                lower
                    ? BackRemedy()
                    : SizedBox(
                        height: 0.0,
                      ),
                ankle
                    ? AnkleRemedy()
                    : SizedBox(
                        height: 0.0,
                      ),
                knee
                    ? KneeRemedy()
                    : SizedBox(
                        height: 0.0,
                      ),
                hip
                    ? HipRemedy()
                    : SizedBox(
                        height: 0.0,
                      ),
                hand
                    ? HandRemedy()
                    : SizedBox(
                        height: 0.0,
                      ),
                elbow
                    ? ElbowRemedy()
                    : SizedBox(
                        height: 0.0,
                      ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton.icon(
                  onPressed: () => _home(context),
                  icon: Icon(Icons.home),
                  label: Text('Home'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
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
