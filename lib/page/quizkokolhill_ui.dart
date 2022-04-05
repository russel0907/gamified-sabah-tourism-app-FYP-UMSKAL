// ignore_for_file: use_key_in_widget_constructors, duplicate_ignore, non_constant_identifier_names, avoid_print, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, deprecated_member_use, unused_local_variable

// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:home_interfaces/main.dart';

//color gradient
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';

class QuizKokolHillUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizKokolHillUIState();
  }
}

class _QuizKokolHillUIState extends State<QuizKokolHillUI> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final questions_kokolhill = const [
    {
      'questionText': 'Q1. Which part of district that Kokol Hill located?',
      'answers': [
        {'text': 'Sandakan', 'score': 0},
        {'text': 'Tawau', 'score': 0},
        {'text': 'Semporna', 'score': 0},
        {'text': 'Kota Kinabalu', 'score': 20},
      ],
    },
    {
      'questionText':
          'Q2. How long would it take to go to Kokol Hill from Kota Kinabalu by using car',
      'answers': [
        {'text': '1 Hours', 'score': 20},
        {'text': '30 Minutes', 'score': 0},
        {'text': '2 Hours', 'score': 0},
        {'text': '10 Minutes', 'score': 0},
      ],
    },
    {
      'questionText':
          ' Q3. All activities below are offered in Kokol Hill except',
      'answers': [
        {'text': 'ATV', 'score': 0},
        {'text': 'Paragliding', 'score': 0},
        {'text': 'Camping', 'score': 20},
        {'text': 'Sightseeing', 'score': 0},
      ],
    },
    {
      'questionText': 'Q4. What other term can be called for Kokol Hill?',
      'answers': [
        {'text': 'Kokol Elf', 'score': 20},
        {'text': 'Kampung Kokol', 'score': 0},
        {'text': 'Sunset Catcher', 'score': 0},
        {'text': 'Mega Swing', 'score': 0},
      ],
    },
    {
      'questionText': 'Q5. What is special in Kokol Hill?',
      'answers': [
        {'text': 'Budget accommodation around the summit', 'score': 0},
        {
          'text':
              'Offers Sunrise view of Mount Kinabalu and Sunset view overlooking the city',
          'score': 20
        },
        {'text': 'Enjoy nature activities', 'score': 0},
        {
          'text': 'Rich for its culture, rainforest and coral reefs',
          'score': 0
        },
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
    if (_questionIndex < questions_kokolhill.length) {
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
                  width: 210,
                  child: Center(
                    child: Text(
                      'Kokol Hill Elf',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: 25),
                    child: Center(
                        child: Image(
                            width: 120,
                            image: AssetImage('img/logo/logo.png')))),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: _questionIndex < questions_kokolhill.length
                          ? Quiz(
                              answerQuestion: _answerQuestion,
                              questionIndex: _questionIndex,
                              questions: questions_kokolhill,
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
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    required this.questions,
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
            height: 150,
            child: Center(
                child: Question(
              questions[questionIndex]['questionText']?.toString() ?? '',
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
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
        textAlign: TextAlign.center,
      ), //Text
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
          Padding(padding: EdgeInsets.only(top: 20)),
          Container(
            decoration: BoxDecoration(
                color: Colors.white70,
                border: Border.all(
                  color: Colors.lightBlue,
                ),
                borderRadius: BorderRadius.circular(5)),
            padding: EdgeInsets.only(top: 50),
            height: 300,
            child: Center(
              child: Column(
                children: [
                  Text(
                    resultPhrase,
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ), //Text
                  Text(
                    'Score ' '$resultScore',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ), //Text
                  FlatButton(
                    child: Text(
                      'Restart Quiz!',
                      style: TextStyle(fontSize: 16),
                    ), //Text
                    textColor: Colors.redAccent,
                    onPressed: resetHandler,
                  ),
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        border: Border.all(
                          width: 3,
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
