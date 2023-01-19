// ignore_for_file: use_key_in_widget_constructors, duplicate_ignore, non_constant_identifier_names, avoid_print, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, deprecated_member_use, unused_local_variable

// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:home_interfaces/main.dart';

//color gradient
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';

class QuizCrockerRangeUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizCrockerRangeUIState();
  }
}

class _QuizCrockerRangeUIState extends State<QuizCrockerRangeUI> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final questions_crockerrange = const [
    {
      'questionText': 'Q1. Where is Crocker Range located?',
      "questionPic": "img/quiz/crockerrange/q1.jpg",
      'answers': [
        {'text': 'East-South coast of Sabah ', 'score': 0},
        {'text': 'North-South coast of Sabah ', 'score': 20},
        {'text': 'North-east coast of Sabah ', 'score': 0},
        {'text': 'West-east coast of Sabah ', 'score': 0},
      ],
    },
    {
      'questionText': 'Q2. Crocker Range is better known as?',
      "questionPic": "img/quiz/crockerrange/q2.jpg",
      'answers': [
        {'text': 'The Largest Park in Sabah', 'score': 0},
        {'text': 'Diverse range of plant and animal kingdom', 'score': 0},
        {'text': 'A Biosphere Reserve by UNESCO', 'score': 20},
        {'text': 'Sabah Forest Reserve', 'score': 0},
      ],
    },
    {
      'questionText': ' Q3. what is the size of Crocker Range Park?',
      "questionPic": "img/quiz/crockerrange/q3.jpg",
      'answers': [
        {'text': '2,500 kilometres', 'score': 0},
        {'text': '1,399 kilometres', 'score': 20},
        {'text': '1,000 kilometres', 'score': 0},
        {'text': '399 kilometres', 'score': 0},
      ],
    },
    {
      'questionText': 'Q4. What is special about Crocker Range Park',
      "questionPic": "img/quiz/crockerrange/q4.jpg",
      'answers': [
        {
          'text': 'Experience the culture and lifestyle of the locals',
          'score': 0
        },
        {'text': 'Budget accommodation', 'score': 0},
        {'text': 'Rare species of plants and wildlife', 'score': 20},
        {'text': 'Various items and goods sold', 'score': 0},
      ],
    },
    {
      'questionText':
          'Q5. Belows are the function of water catchments in the Crocker Range Park except',
      "questionPic": "img/quiz/crockerrange/q5.jpg",
      'answers': [
        {'text': 'Drinking', 'score': 0},
        {'text': 'Agriculture', 'score': 0},
        {'text': 'Accomodation needs', 'score': 20},
        {'text': 'Industrial purposes', 'score': 0},
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
    if (_questionIndex < questions_crockerrange.length) {
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
                  width: 240,
                  child: Center(
                    child: Text(
                      'Crocker Range',
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
                      child: _questionIndex < questions_crockerrange.length
                          ? Quiz(
                              answerQuestion: _answerQuestion,
                              questionIndex: _questionIndex,
                              questions: questions_crockerrange,
                              questionspic: questions_crockerrange,
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
      margin: EdgeInsets.only(top: 20, left: 5, right: 5),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
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
        margin: EdgeInsets.only(top: 10),
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
      child: ElevatedButton(
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
                  TextButton(
                    child: Text(
                      'Restart Quiz!',
                      style: TextStyle(fontSize: 16),
                    ), //Text
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
