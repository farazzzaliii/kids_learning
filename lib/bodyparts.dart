import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('COLORS'),
          backgroundColor: Colors.green.shade400,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: GridView.count(
            crossAxisCount: 2, // Number of columns
            crossAxisSpacing: 10.0, // Spacing between columns
            mainAxisSpacing: 10.0, // Spacing between rows
            children: <Widget>[
              ContainerFruit(Colors.pink, 'Assets/bodyparts/ears.jpeg', onPressed: () {
                _playSoundears();

              }),
              ContainerFruit(Colors.pink, 'Assets/bodyparts/eyes.jpg', onPressed: () {
                _playSoundeyes();
              }),
              ContainerFruit(Colors.blue, 'Assets/bodyparts/head.jpg' , onPressed: () {
                _playSoundhead();
              }),
              ContainerFruit(Colors.lightBlue,'Assets/bodyparts/nose.jpeg', onPressed: () {
                _playSoundnose();
              }),
              ContainerFruit(Colors.green,'Assets/bodyparts/feet.jpeg', onPressed: () {
                _playSoundfeet();
              }),
              ContainerFruit(Colors.lightGreen,'Assets/bodyparts/shoulder.jpeg', onPressed: () {
                _playSoundshoulder();
              }),
              ContainerFruit(Colors.yellow,'Assets/bodyparts/legs.jpeg', onPressed: () {
                _playSoundlegs();
              }),
              ContainerFruit(Colors.black,'Assets/bodyparts/lips.jpeg', onPressed: () {
                _playSoundlips();
              }),
              ContainerFruit(Colors.grey,'Assets/bodyparts/teeth.jpeg', onPressed: () {
                _playSoundteeth();
              }),
              ContainerFruit(Colors.purple,'Assets/bodyparts/Hands.png', onPressed: () {
                _playSoundhands();
              }),

            ],
          ),
        ),
      ),
    );

  }

  Widget ContainerFruit(Color color, String imagePath, {required VoidCallback onPressed}) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }



  static AudioCache player = AudioCache();

  static void _playSoundears() {
    player.play('ears.mp3');
  }
  static void _playSoundeyes() {
    player.play('eyes.mp3');
  }
  static void _playSoundfeet() {
    player.play('feets.mp3');
  }
  static void _playSoundhands() {
    player.play('hands.mp3');
  }
  static void _playSoundhead() {
    player.play('head.mp3');
  }
  static void _playSoundlegs() {
    player.play('legs.mp3');
  }
  static void _playSoundlips() {
    player.play('lips.mp3');
  }
  static void _playSoundnose() {
    player.play('nose.mp3');
  }
  static void _playSoundshoulder() {
    player.play('shoulder.mp3');
  }
  static void _playSoundteeth() {
    player.play('teeth.mp3');
  }




}
