import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<Myapp> {
  String question = "1-savol";
  String answer1 = "1-answer S1";
  String answer2 = "2-answer S1";
  String answer3 = "3-answer S1";
  String answer4 = "4-answer S1";
  int nomeration = 1;
  void answerQuestion() {
    setState(() {
      if (nomeration == 1) {
        question = "2-Savol";
        answer1 = "1-answer S2";
        answer2 = "2-answer S2";
        answer3 = "3-answer S2";
        answer4 = "4-answer S2";
      } else if (nomeration == 2) {
        question = "3-Savol";
        answer1 = "1-answer S3";
        answer2 = "2-answer S3";
        answer3 = "3-answer S3";
        answer4 = "4-answer S3";
      } else if (nomeration == 3) {
        question = "4-Savol";
        answer1 = "1-answer S4";
        answer2 = "2-answer S4";
        answer3 = "3-answer S4";
        answer4 = "4-answer S4";
      } else {
        question = "5-Savol";
        answer1 = "1-answer S5";
        answer2 = "2-answer S5";
        answer3 = "3-answer S5";
        answer4 = "4-answer S5";
      }
      nomeration++;
    });
    print("men shu erdaman");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.amber,
          title: Text("Hello world"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                question,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: answerQuestion,
                child: Text(
                  answer1,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                // style: ElevatedButton.styleFrom(primary: Colors.amber),
              ),
              ElevatedButton(
                onPressed: answerQuestion,
                child: Text(
                  answer2,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                // style: ElevatedButton.styleFrom(primary: Colors.amber),
              ),
              ElevatedButton(
                onPressed: answerQuestion,
                child: Text(
                  answer3,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                // style: ElevatedButton.styleFrom(primary: Colors.amber),
              ),
              ElevatedButton(
                onPressed: answerQuestion,
                child: Text(
                  answer4,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                // style: ElevatedButton.styleFrom(primary: Colors.amber),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
