import "package:flutter/material.dart";
import "./question.dart";
import "./answer.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var questionIndex = 0;
    void answerQuestion() {
      setState(() {
        questionIndex = questionIndex + 1;
      });
      print(questionIndex);
    }

    var questions = [
      {
        "questionText":
            "You’ve made it to Hogwarts, which means you’ve already bought a wand from Ollivander’s. What material is at its core?",
        "answers": ["Phoenix Feather", "Dragon Heartstring", "Unicorn Hair"],
      },
      {
        "questionText":
            "During the end-of-year exams, you notice that one of your classmates was using an enchanted quill. You come top of the class anyway, but they are second. What do you do?",
        "answers": [
          "Tell the professor immediately – cheating is wrong, no matter what.",
          "Nothing, but if I hadn't come top of the class, I'd definitely tell the professor.",
          "Encourage the other student to admit what they'd done to the professor.",
          "Give them a high five for managing to sneak the quill into the exam.",
        ],
      },
      {
        "questionText": "You would be most hurt if a person called you...",
        "answers": ["Weak", "Ignorant", "Unkind", "Boring"],
      },
      // {
      //   "questionText": "",
      //   "answers": [],
      // },
      // {
      //   "questionText": "",
      //   "answers": [],
      // },
      // {
      //   "questionText": "",
      //   "answers": [],
      // }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quizz"),
        ),
        body: Column(
          children: [
            Question(
              questions[questionIndex]["questionText"],
            ),
            (questions[questionIndex]["answers"] as List<String>).map((answer) {
              return Answer(answer);
            })
          ],
        ),
      ),
    );
  }
}
