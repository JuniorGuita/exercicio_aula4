import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Pergunte-me algo'),
          backgroundColor: Colors.blue,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  var BallNumber = 1;

  void randomBall(){
    setState(() {
      BallNumber = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            onPressed: () {
              randomBall();
              print('Clicou no botão esquerdo');
            },
            child: Image.asset(
                'images/ball$BallNumber.png'
            ),
          ),
          Column(
            children: <Widget>[
              if (BallNumber == 1)
                Text("YES"),
              if (BallNumber == 2)
                Text("NO"),
              if (BallNumber == 3)
                Text("ASK AGAIN LATER"),
              if (BallNumber == 4)
                Text("THE ANSWER IS YES"),
              if (BallNumber == 5)
                Text("I HAVE NO IDEIA")
            ],
          ),
        ],
      ),
    );
  }
}
