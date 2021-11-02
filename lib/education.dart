import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class education extends StatefulWidget {
  const education({Key? key}) : super(key: key);

  @override
  _educationState createState() => _educationState();
}

class _educationState extends State<education> {
  GradientText title(String name) {
    return GradientText(
      name,
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'OpenSans',
      ),
      textAlign: TextAlign.center,
      colors: [
        Colors.blueGrey,
        Colors.blueAccent,
        Colors.lightBlueAccent,
      ],
    );
  }

  Padding subtitle(String sname) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Text(
        sname,
        style: TextStyle(
          color: Colors.blueGrey[700],
          fontSize: 17.0,
          fontFamily: 'OpenSans',
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Padding content(String subname) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Text(
        subname,
        style: TextStyle(
          color: Colors.blueGrey[700],
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
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
          'My Education',
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
            height: 15,
          ),
          title(
              'Bachelors of Engineering in Computer Engineering(June,2018 - June,2021)'),
          SizedBox(
            height: 10,
          ),
          subtitle(
              'C.K. Pithawala College of Engineering and Technology, Surat(GTU)'),
          content('CGPA : 8.88/10.0'),
          divider(),
          title('12th Standard (March 2017)'),
          SizedBox(
            height: 10,
          ),
          subtitle(
              'Shree M.L. Patel & Smt. D.M. Patel Higher Secondary School, Surat(GSHEB)'),
          content('H.S.C. Percentile : 75.90%'),
          divider(),
          title('10th Standard (March 2015)'),
          SizedBox(
            height: 10,
          ),
          subtitle('Smt. V.D.N. Shah Secondary School, Surat(GSHEB)'),
          content('S.S.C Percentile : 93.71%'),
        ],
      )),
    );
  }
}
