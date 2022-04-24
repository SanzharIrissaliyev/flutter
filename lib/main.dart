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
  void answerQuestion() {
    setState(() {
      question = "2-Savol";
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
          backgroundColor: Colors.amber,
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
                  '1-javob',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.amber),
              ),
              ElevatedButton(
                onPressed: answerQuestion,
                child: Text(
                  '2-javob',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                // style: ElevatedButton.styleFrom(primary: Colors.amber),
              ),
              ElevatedButton(
                onPressed: answerQuestion,
                child: Text(
                  '3-javob',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                // style: ElevatedButton.styleFrom(primary: Colors.amber),
              ),
              ElevatedButton(
                onPressed: answerQuestion,
                child: Text(
                  '4-javob',
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
