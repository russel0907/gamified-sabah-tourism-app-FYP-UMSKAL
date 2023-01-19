// ignore_for_file: use_key_in_widget_constructors, duplicate_ignore, non_constant_identifier_names, avoid_print, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, deprecated_member_use, unused_local_variable

// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:home_interfaces/main.dart';

//color gradient
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';

class QuizSimpangMengayauUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizSimpangMengayauUIState();
  }
}

class _QuizSimpangMengayauUIState extends State<QuizSimpangMengayauUI> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final questions_simpangmengayau = const [
    {
      "questionText": "Q1. Where is Tanjung Simpang Mengayau located?",
      "answers": [
        {'text': 'Kudat', 'score': 20},
        {'text': 'Ranau', 'score': 0},
        {'text': 'Kota Kinabalu', 'score': 0},
        {'text': 'Sandakan', 'score': 0},
      ],
    },
    {
      'questionText': 'Q2. Why is it called Tanjung Simpang Mengayau Beach?',
      'answers': [
        {'text': 'The meeting point of two big oceans', 'score': 0},
        {'text': 'The Shape of the tip', 'score': 0},
        {'text': 'The junction to the battle at the tip', 'score': 20},
        {
          'text': 'Watch-point for pirate invasion hundreds of years ago',
          'score': 0
        },
      ],
    },
    {
      'questionText':
          ' Q3. How long do it take to go to Tanjung Simpang Mengayau from KK City?',
      'answers': [
        {'text': '15 Minutes', 'score': 0},
        {'text': '30 Minutes', 'score': 0},
        {'text': '1 Hours', 'score': 0},
        {'text': '3 Hours', 'score': 20},
      ],
    },
    {
      'questionText': 'Q4. What is special in Tanjung Simpang Mengayau?',
      'answers': [
        {'text': 'Budget accommodation around the Street', 'score': 0},
        {
          'text':
              'A park ground with bronze globe marks the location of the Borneo Island tip',
          'score': 20
        },
        {'text': 'Crystal clear beach', 'score': 0},
        {'text': 'Variety of Cultures', 'score': 0},
      ],
    },
    {
      'questionText':
          'Q5. All activities below are offered in Tanjung Simpang Mengayau except',
      'answers': [
        {'text': 'Camping', 'score': 20},
        {'text': 'Photo Selfies', 'score': 0},
        {'text': 'Sight Seeing', 'score': 0},
        {'text': 'Sunset Music Fest', 'score': 0},
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
    if (_questionIndex < questions_simpangmengayau.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors

          title: Center(
              child: Text(
            "Simpang Mengayau",
            style: TextStyle(color: Colors.white, fontSize: 28),
          )),

          backgroundColor: Colors.blueAccent,
        ),
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
                      child: _questionIndex < questions_simpangmengayau.length
                          ? Quiz(
                              answerQuestion: _answerQuestion,
                              questionIndex: _questionIndex,
                              questions: questions_simpangmengayau,
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
                  TextButton(
                    child: Text(
                      'Restart Quiz!',
                      style: TextStyle(fontSize: 16),
                    ), //Text
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
