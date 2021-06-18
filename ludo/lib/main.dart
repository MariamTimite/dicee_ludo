import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DicePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class DicePage extends StatefulWidget {
  DicePage({Key key, this.title}) : super(key: key);

  

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<DicePage> {
  
    int leftDiceNumber= 1;
    int rightDiceNumber= 1;

    void changeDiceFace(){
      setState(() {
          leftDiceNumber=Random().nextInt(6) +1;
          rightDiceNumber=Random().nextInt(6) +1;
      });
    }

  @override
  Widget build(BuildContext context) {

    print('object');

    return Scaffold(
      backgroundColor: Colors.red[800],
      appBar: AppBar(
        backgroundColor:Colors.red [800],
       title: Text('Dicee'),
      ),
     body: Center(
       child: Row(
        children :[
 Expanded(
   
   child:  Padding(
     padding: const EdgeInsets.all(16.0),
     child: TextButton(
       onPressed: (){
         changeDiceFace();
         print('Left button got pressed!');
       },
     child: Image(
              width: 200,
              image: AssetImage('images/dice$leftDiceNumber.png'),
              ),
     )
   )
          ),

Expanded(
  
  child:  Padding(
    padding: const EdgeInsets.all(16.0),
    child: TextButton(
      onPressed: (){
        changeDiceFace();
        print('Right button got pressed!');
        }
    ,
    child: Image(
              width: 200,
              image: AssetImage('images/dice$rightDiceNumber.png'),
              ),
    )
  )
          )
        ]

       ),
     ), 
    );
  }
}
