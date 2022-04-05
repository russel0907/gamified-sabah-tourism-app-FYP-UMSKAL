// ignore_for_file: use_key_in_widget_constructors, duplicate_ignore, non_constant_identifier_names, avoid_print, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, deprecated_member_use, unused_local_variable

// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:home_interfaces/main.dart';

//color gradient
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';

class QuizKiuluValleyUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizKiuluValleyUIState();
  }
}

class _QuizKiuluValleyUIState extends State<QuizKiuluValleyUI> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final questions_kiuluvalley = const [
    {
      'questionText': 'Q1. Where is Kiulu Valley located?',
      "questionPic": "img/quiz/kiuluvalley/q1.jpg",
      'answers': [
        {'text': 'West-east coast of Sabah', 'score': 0},
        {'text': 'East-west coast of Sabah', 'score': 0},
        {'text': 'North-west coast of Sabah', 'score': 20},
        {'text': 'South-east coast of Sabah', 'score': 0},
      ],
    },
    {
      'questionText': 'Q2. Kiulu Valley is better known as?',
      "questionPic": "img/quiz/kiuluvalley/q2.jpg",
      'answers': [
        {'text': 'Kiulu Countryside', 'score': 0},
        {'text': 'Kiulu Reservation', 'score': 0},
        {'text': 'The Valley of the dawn', 'score': 0},
        {'text': 'The Valley in The Mist', 'score': 20},
      ],
    },
    {
      'questionText': ' Q3. Why is it called Kiulu?',
      "questionPic": "img/quiz/kiuluvalley/q3.jpg",
      'answers': [
        {'text': 'A plant that is called Tulu', 'score': 20},
        {'text': 'Given by the village chief', 'score': 0},
        {'text': 'From hereditary stories', 'score': 0},
        {'text': 'Inspiration from the valley stream', 'score': 0},
      ],
    },
    {
      'questionText': 'Q4. What is unique about Kiulu Valley?',
      "questionPic": "img/quiz/kiuluvalley/q4.jpg",
      'answers': [
        {'text': 'Population of over 2,000 people', 'score': 0},
        {'text': 'Have mixed gardens', 'score': 0},
        {'text': 'Maintaining unique culture practices', 'score': 20},
        {'text': 'Developing rural tourism', 'score': 0},
      ],
    },
    {
      'questionText': 'Q5. Below are activity provided in Kiulu Valley except',
      "questionPic": "img/quiz/kiuluvalley/q5.jpg",
      'answers': [
        {'text': 'Kiulu Junggle Trail', 'score': 20},
        {'text': 'Kiulu Bamboo Village Stay', 'score': 0},
        {'text': 'Kiulu Countryside on Quad Biki', 'score': 0},
        {'text': 'Kiulu Bamboo Village Tour', 'score': 0},
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < questions_kiuluvalley.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  GradientColors.aqua[1],
                  GradientColors.malibuBeach[1],
                  GradientColors.malibuBeach[0],
                ])),
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: GradientColors.happyFisher[1], width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  width: 200,
                  child: Center(
                    child: Text(
                      'Kiulu Valley',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: _questionIndex < questions_kiuluvalley.length
                          ? Quiz(
                              answerQuestion: _answerQuestion,
                              questionIndex: _questionIndex,
                              questions: questions_kiuluvalley,
                              questionspic: questions_kiuluvalley,
                            ) //Quiz
                          : Result(_totalScore, _resetQuiz),
                    ),
                  ],
                ),
              ],
            )),

        //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final List<Map<String, Object>> questionspic;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    required this.questions,
    required this.questionspic,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.9), BlendMode.dstATop),
                image: AssetImage('img/quizbackground/quizbackground.png'),
                fit: BoxFit.fill,
              ),
              border:
                  Border.all(color: GradientColors.happyFisher[1], width: 5),
              borderRadius: BorderRadius.circular(4),
            ),
            width: 400,
            height: 300,
            child: Center(
                child: Column(
              children: [
                QuestionPic(
                    questions[questionIndex]['questionPic']?.toString() ?? ''),
                Question(
                  questions[questionIndex]['questionText']?.toString() ?? '',
                ),
              ],
            ))), //Question

        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']),
              answer['text']?.toString() ?? '');
        }).toList(),
      ],
    ); //Column
  }
}

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 15, left: 5, right: 5),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        textAlign: TextAlign.center,
      ), //Text
    ); //Container
  }
}

class QuestionPic extends StatelessWidget {
  final String questionPic;

  QuestionPic(this.questionPic);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 3),
        ),
        margin: EdgeInsets.only(top: 15),
        child: Image(
          image: AssetImage(questionPic),
          fit: BoxFit.cover,
        ) //Text
        ); //Container
  }
}

class Answer extends StatelessWidget {
  final Function() selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 5, top: 5),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        color: Colors.white,
        textColor: Colors.black,
        child: Text(answerText),
        onPressed: selectHandler,
      ), //RaisedButton
    ); //Container
  }
}

class Result extends StatelessWidget {
  final int resultScore;
  final Function() resetHandler;

  Result(this.resultScore, this.resetHandler);

//Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore == 100) {
      resultText = 'Excellent!';
      print(resultScore);
    } else if (resultScore >= 80) {
      resultText = 'You are awesome!';
      print(resultScore);
    } else if (resultScore >= 60) {
      resultText = 'Pretty likeable!';
      print(resultScore);
    } else if (resultScore >= 40) {
      resultText = 'You need to work more!';
    } else if (resultScore >= 20) {
      resultText = 'You need to work hard!';
    } else {
      resultText = 'This is a poor score!';
      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white70,
                border: Border.all(
                  color: Colors.lightBlue,
                ),
                borderRadius: BorderRadius.circular(5)),
            padding: EdgeInsets.only(top: 50),
            height: 480,
            child: Center(
              child: Column(
                children: [
                  Image(width: 160, image: AssetImage('img/logo/logo.png')),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    resultPhrase,
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ), //Text
                  Text(
                    'Score ' '$resultScore',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ), //Text
                  FlatButton(
                    child: Text(
                      'Restart Quiz!',
                      style: TextStyle(fontSize: 16),
                    ), //Text
                    textColor: Colors.redAccent,
                    onPressed: resetHandler,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        border: Border.all(
                          width: 2,
                          color: Colors.black87,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    height: 50,
                    width: 150,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => AppUI()));
                        },
                        child: Text(
                          'Home',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )),
                  ),
                ],
              ),
            ),
          )

          //FlatButton
        ], //<Widget>[]
      ), //Column
    ); //Center
  }
}
