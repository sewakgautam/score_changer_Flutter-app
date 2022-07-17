import 'package:flutter/material.dart';

void main() {
  runApp(scoreApp());
}

class scoreApp extends StatelessWidget {
  const scoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Score App",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  const ScoreHome({Key? key}) : super(key: key);

  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;
  void increase_number() {
    setState(() {
      number++;
    });
  }

  void decrease_number() {
    setState(() {
      number--;
    });
  }

  void reset_number() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Score Changer"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: reset_number,
      ),
      body: Column(children: [
        SizedBox(
          height: 50,
        ),
        Center(
          child: Text(
            "Score is",
            style: TextStyle(
                color: Colors.green, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            number.toString(),
            style: TextStyle(
                color: Colors.green,
                fontSize: 205,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              color: Colors.blue,
              child: Text('Increase', style: TextStyle(color: Colors.white)),
              onPressed: increase_number,
            ),
            SizedBox(
              width: 20,
            ),
            RaisedButton(
              color: Colors.red,
              child: Text('Decrease', style: TextStyle(color: Colors.white)),
              onPressed: decrease_number,
            )
          ],
        )
      ]),
    );
  }
}
