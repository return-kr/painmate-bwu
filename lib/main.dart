import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:painmate/helper.dart';
import 'package:painmate/second.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white, // navigation bar color
      statusBarColor: Colors.white12, // status bar color
      statusBarIconBrightness: Brightness.dark, // status bar icons' color
      systemNavigationBarIconBrightness:
          Brightness.dark, //navigation bar icons' color
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MainScreen()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white),
          ),
          Center(
            child: CircleAvatar(
              radius: 200.0,
              child: Image.asset('images/splash.jpeg'),
              backgroundColor: Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _sexValue;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  TextEditingController _heightController = TextEditingController();
  TextEditingController _1 = TextEditingController();
  TextEditingController _2 = TextEditingController();
  TextEditingController _3 = TextEditingController();
  var _4;
  final GlobalKey<ScaffoldState> _scaffKey = GlobalKey<ScaffoldState>();
  final ref = FirebaseDatabase.instance.reference();

  DateTime selectedDate = DateTime.now();
  Future<bool> _willPopScope(context) async {
    showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Do you want you exit the app?'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  SystemNavigator.pop();
                },
                child: Text('Yes'),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('No')),
            ],
          );
        });
    return true;
  }

  void _selectDate(BuildContext context) async {
    var picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2050),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  void _submit(BuildContext context) async {
    String name = _nameController.text.toString().trim();
    String weight = _weightController.text.toString().trim();
    String height = _heightController.text.toString().trim();
    String q1 = _1.text.toString().trim();
    String q2 = _2.text.toString().trim();
    String q3 = _3.text.toString().trim();
    String q4 = _4.toString().trim();
    String sex = _sexValue.toString().trim();
    String dob = selectedDate.toString().trim();

    if (name.isEmpty ||
        weight.isEmpty ||
        height.isEmpty ||
        q1.isEmpty ||
        q2.isEmpty ||
        q3.isEmpty ||
        _4 == null ||
        _sexValue == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('All fields are Mandatory'),
        ),
      );
      return;
    }
    try {
      final internet = await InternetAddress.lookup('google.com');
      if (internet.isNotEmpty && internet[0].rawAddress.isNotEmpty) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SecondScreen(
                name: name,
                sex: sex,
                dob: dob.substring(0, 10),
                weight: weight,
                height: height,
                q1: q1,
                q2: q2,
                q3: q3,
                q4: q4),
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
    return WillPopScope(
      onWillPop: () => _willPopScope(context),
      child: Scaffold(
        key: _scaffKey,
        body: Align(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset('images/medical.jpg'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Welcome to Painmate',
                    style: TextStyle(
                        color: Colors.blue[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0),
                  ),
                  Icon(
                    Icons.medical_services_rounded,
                    color: Colors.red,
                    size: 30.0,
                  ),
                  Text(
                    'Dept. of Allied and Health Science',
                    style: TextStyle(
                        color: Colors.green[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Fill-up personal details',
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
                            Colors.white.withOpacity(0.5), BlendMode.dstATop),
                      ),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _nameController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Name',
                            hintText: 'Full Name',
                            border: OutlineInputBorder(),
                            suffixIcon:
                                Icon(Icons.drive_file_rename_outline_rounded),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Sex:',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 16.0),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 'Male',
                              groupValue: _sexValue,
                              onChanged: (val) {
                                _sexValue = val.toString().trim();
                                setState(() {});
                              },
                            ),
                            Text('Male'),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 'Female',
                              groupValue: _sexValue,
                              onChanged: (val) {
                                _sexValue = val.toString().trim();
                                setState(() {});
                              },
                            ),
                            Text('Female'),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 'Others',
                              groupValue: _sexValue,
                              onChanged: (val) {
                                _sexValue = val.toString().trim();
                                setState(() {});
                              },
                            ),
                            Text('Others'),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Date of Birth:',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 16.0),
                            ),
                          ],
                        ),
                        Text(
                          "${selectedDate.toLocal()}".split(' ')[0],
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        ElevatedButton.icon(
                          onPressed: () => _selectDate(context),
                          icon: Icon(Icons.date_range_rounded),
                          label: Text('Choose'),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          controller: _weightController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Weight',
                            hintText: 'Weight in KG',
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.line_weight_rounded),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          controller: _heightController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Height',
                            hintText: 'Height in cm',
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.height_rounded),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Fill-up work-life information',
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
                            Text(
                              'Duration of present work (Years): ',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 16.0),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        TextFormField(
                          controller: _1,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Working days:',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 16.0),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        TextFormField(
                          controller: _2,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Working hours:',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 16.0),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        TextFormField(
                          controller: _3,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Any overtime?',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 16.0),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: _4,
                              onChanged: (val) {
                                setState(
                                  () {
                                    _4 = val;
                                  },
                                );
                              },
                            ),
                            Answer(txt: 'Yes')
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 2,
                              groupValue: _4,
                              onChanged: (val) {
                                setState(
                                  () {
                                    _4 = val;
                                  },
                                );
                              },
                            ),
                            Answer(txt: 'No')
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton.icon(
                    onPressed: () => _submit(context),
                    icon: Icon(Icons.login_rounded),
                    label: Text('Submit'),
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
      ),
    );
  }
}
