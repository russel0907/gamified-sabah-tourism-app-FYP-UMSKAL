// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AboutUsUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueAccent,
        title: Center(
            child: Text(
          'About Us',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        )),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Center(
                child: Image(
              width: 160,
              image: AssetImage(
                'img/logo/logo.png',
              ),
            )),
            height: 180,
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                    flex: 0,
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(
                                20) // use instead of BorderRadius.all(Radius.circular(20))
                            ),
                        child: Center(
                            child: Text(
                          'About Us',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )))),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                Expanded(
                    flex: 1,
                    child: Text(
                      'Sabah Tourism',
                      style: TextStyle(fontSize: 20),
                    )),
                Expanded(
                    flex: 5,
                    child: Container(
                      padding: EdgeInsets.all(17),
                      child: Text(
                        'Gamified Sabah Tourism App is an application which enhance user experience and improve their information as well as to explore interesting places available in Sabah, Malaysia by implementing gamification elements.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 16),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(
                                20) // use instead of BorderRadius.all(Radius.circular(20))
                            ),
                        child: Center(
                            child: Text(
                          'Developed By',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )))),
                Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      child: Center(
                          child: Row(
                        children: [
                          Spacer(),
                          Icon(
                            Icons.email,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.65,
                            child: Text(
                              'Russel Rosmin  -  BI18110034@student.ums.edu.my',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          Spacer(),
                        ],
                      )),
                    )),
                Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Spacer(),
                        Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.65,
                          child: Text(
                            'Mohd Shahril Anwar Bin Norsaid  -   BI18110246@student.ums.edu.my',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Spacer(),
                      ],
                    )),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                Expanded(
                    flex: 0,
                    child: Column(
                      children: [
                        Text(
                          'Sabah Tourism',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          '@2021 Sabah Tourism App. All Right Reserved',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    )),
                Padding(padding: EdgeInsets.only(bottom: 5)),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
