import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                color: Colors.red,
                onPressed: () {
                  _playSound(1);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.orange,
                onPressed: () {
                  _playSound(2);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  _playSound(3);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.green,
                onPressed: () {
                  _playSound(4);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.blueGrey,
                onPressed: () {
                  _playSound(5);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.blue,
                onPressed: () {
                  _playSound(6);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.deepPurple,
                onPressed: () {
                  _playSound(7);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _playSound(int id) {
    final player = AudioCache();
    player.play('note$id.wav');
  }
}
