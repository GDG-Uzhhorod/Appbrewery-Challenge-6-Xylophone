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
            _buildKey(color: Colors.red, soundID: 1),
            _buildKey(color: Colors.orange, soundID: 2),
            _buildKey(color: Colors.yellow, soundID: 3),
            _buildKey(color: Colors.green, soundID: 4),
            _buildKey(color: Colors.blueGrey, soundID: 5),
            _buildKey(color: Colors.blue, soundID: 6),
            _buildKey(color: Colors.deepPurple, soundID: 7),
          ],
        ),
      ),
    );
  }

  void _playSound(int id) {
    final player = AudioCache();
    player.play('note$id.wav');
  }

  Expanded _buildKey({Color color, int soundID}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          _playSound(soundID);
        },
      ),
    );
  }
}
