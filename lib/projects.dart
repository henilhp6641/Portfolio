import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class projects extends StatefulWidget {
  const projects({Key? key}) : super(key: key);

  @override
  _projectsState createState() => _projectsState();
}

class _projectsState extends State<projects> {
  GradientText title(String name) {
    return GradientText(
      name,
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'OpenSans',
      ),
      colors: [
        Colors.blueGrey,
        Colors.blueAccent,
        Colors.lightBlueAccent,
      ],
    );
  }

  Padding content(String subname) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Text(
        subname,
        style: TextStyle(
          color: Colors.blueGrey[700],
          fontSize: 15.0,
          fontFamily: 'OpenSans',
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Divider divider() {
    return Divider(
        color: Colors.blueGrey,
        indent: 25,
        endIndent: 25,
        thickness: 1.5,
        height: 15);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text(
          'My Projects',
          style: TextStyle(
            fontFamily: 'IMFellEnglishSC',
            fontSize: 30.0,
          ),
        ),
        backgroundColor: Colors.blueGrey[700],
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 12,
          ),
          title('Smart Farming System Using IOT:'),
          SizedBox(
            height: 3,
          ),
          content(
            'Smart Farming System is provides water supply when it is necessary after sensing soil humidity and moisture using a sensor. This system is protect the crop from insects through playing buzzer. Farmer can see the data in the app. They can turn on/off the motor with the help of mobile app.',
          ),
          divider(),
          title('BMI Calculator app:'),
          SizedBox(
            height: 3,
          ),
          content(
              'This app is used for calculate health of body using body weight, height etc.'),
          divider(),
          title('Healthcare System:'),
          SizedBox(
            height: 3,
          ),
          content(
            'Healthcare system is one type of website. There are many function are available such as hospital information, patient care, medicine information, doctor data.',
          ),
          divider(),
          title(
            'Foodies Website:',
          ),
          SizedBox(
            height: 3,
          ),
          content(
            'This project is contain basic UI of food website. In this website different function are available such as Home, Info, Food Delivery, Sign Up and Sign In.',
          ),
        ],
      )),
    );
  }
}
