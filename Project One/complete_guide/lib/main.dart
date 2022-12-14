import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestions() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "what's your favorite color?",
      "What's your favorite animal?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
            ),
            ElevatedButton(child: Text("Answer 1"), onPressed: answerQuestions),
            ElevatedButton(
              child: Text("Answer 2"),
              onPressed: () => print("Answer 2 chosen!"),
            ),
            ElevatedButton(
              child: Text("Answer 3"),
              onPressed: () {
                // ....
                print("Answer 3 chosen!");
              },
            ),
          ],
        ),
      ),
    );
  }
}
