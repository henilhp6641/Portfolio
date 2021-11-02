import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class skills extends StatefulWidget {
  const skills({Key? key}) : super(key: key);

  @override
  _skillsState createState() => _skillsState();
}

class _skillsState extends State<skills> {
  Expanded title(String name) {
    return Expanded(
      child: GradientText(
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
      ),
    );
  }

  Expanded content(String subname) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        subname,
        style: TextStyle(
          color: Colors.blueGrey[700],
          fontSize: 15.0,
          fontFamily: 'OpenSans',
        ),
        textAlign: TextAlign.center,
      ),
    ));
  }

  Divider divider() {
    return Divider(
        color: Colors.blueGrey,
        indent: 25,
        endIndent: 25,
        thickness: 1.5,
        height: 12);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text(
          'My Skills',
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
            height: 14,
          ),
          title('Prgramming Skills'),
          content(
              'C, C++, Java, Python, HTML, CSS, JavaScript, Dart,Python libraries: Numpy, Pandas, Matplotlib'),
          divider(),
          title('Framework'),
          content('Flutter'),
          divider(),
          title('Tools'),
          content('Visual Studio Code, Android Studio, GitHub'),
          divider(),
          title('Operating System'),
          content('Windows, MacOS, Linux'),
          divider(),
          title('Language'),
          content('English, Hindi, Gujarati'),
        ],
      )),
    );
  }
}
