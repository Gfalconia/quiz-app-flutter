import 'package:flutter/material.dart';
import '../question_page.dart';
import 'final_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        FinalPage.routeName: (context) => FinalPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Column(children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 30)),
          Image.asset('lib/assets/images/main-logo.png'),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'G A M E P L A T F O R M',
              style: TextStyle(color: Colors.white),
            ),
          ]),
          Padding(padding: EdgeInsets.only(top: 30, bottom: 30)),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Победи Борьку из 5-Б своим интеллектом!',
              style: TextStyle(color: Colors.white),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Стань королем школы',
              style: TextStyle(color: Colors.white),
            )
          ]),
          Padding(padding: EdgeInsets.only(top: 30, bottom: 30)),
          Center(
              child: OutlinedButton(
            onPressed: () {
              answersArray.forEach((element) {
                element.shuffle();
              });
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuestionPage()),
              );
            },
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Играть',
                    style: TextStyle(color: Colors.white),
                  )
                ]),
          ))
        ]));
  }
}
