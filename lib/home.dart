import 'package:flutter/material.dart';
import 'package:untitled1/function.dart';

void main() => runApp( MyApp());

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<function> fun=[function(one: 'Skills', two: 'Projects', three: 'Education')];

  Widget functiontemp(f){
    return Card(
      color: Colors.blueGrey[400],
      margin: EdgeInsets.all(10.0),
      child:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children:<Widget> [
            FlatButton(onPressed: (){
              Navigator.pushNamed(context, '/skills');

            },
                child: Text(f.one,
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.bold,
                ),
                )),

            SizedBox(width: 28.0,),

            FlatButton(onPressed: (){
              Navigator.pushNamed(context, '/projects');
            },
                child: Text(f.two,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold,
                  ),)),

            SizedBox(width: 28.0,),

            FlatButton(onPressed: (){
              Navigator.pushNamed(context, '/education');
            },
                child: Text(f.three,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold,
                  ),)),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          title: const Text(
            'My Profile',
            style: TextStyle(
              fontFamily: 'IMFellEnglishSC',
              fontSize: 30.0,
            ),
          ),
          backgroundColor: Colors.blueGrey[700],
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('img/img3.jpg'),
              radius: 55.0,
            ),
            Text(
              'Henilkumar J. Patel',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                fontFamily: 'OpenSans',
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: EdgeInsets.all(17.0),
              child: Text(
                'Passionate, hard working and energetic undergraduate student who is steer and can meet any strict deadlines. Seeking for job in a reputed organization, which helps to evolve with the society and an atmosphere conducive to continuous growth and advancement based on personal competency, where I can utilize my skills and knowledge in carving out my career in the field of “Computer Science”.',
                style: TextStyle(
                  fontSize: 15.5,
                  letterSpacing: 0.7,
                  fontFamily: 'OpenSans',
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget>[

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('E-mail: ',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black87,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                        child: Text("hp6641@gmail.com", style: TextStyle(decoration: TextDecoration.underline,fontSize: 17, color: Colors.blueGrey,)),
                        onTap:(){}
                    ),
                  ],
                ),

                SizedBox(
                  height: 8.0,
                ),

                Text('Linkedln:',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black87,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                        child: Text("https://www.linkedin.com/in/henil-patel-11a06415a/", style: TextStyle(decoration: TextDecoration.underline,fontSize: 17, color: Colors.blueGrey)),
                        onTap:(){}
                    ),
                  ],
                ),

                SizedBox(
                  height: 8.0,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Github: ',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black87,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                        child: Text("https://github.com/henilhp6641", style: TextStyle(decoration: TextDecoration.underline,fontSize: 17, color: Colors.blueGrey)),
                        onTap:(){}
                    ),
                  ],
                )
              ],
            ),

            SizedBox(
              height: 12,
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: fun.map((f)=>functiontemp(f)).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
