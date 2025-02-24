import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MyShapes extends StatelessWidget {
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
              ContainerFruit(Colors.pink, 'Assets/shapes/circle.jpeg', onPressed: () {
                _playSoundcircle();

              }),
              ContainerFruit(Colors.pink, 'Assets/shapes/square.jpeg', onPressed: () {
                _playSoundsquare();
              }),
              ContainerFruit(Colors.blue, 'Assets/shapes/rectangle.jpeg' , onPressed: () {
                _playSoundrectangle();
              }),
              ContainerFruit(Colors.lightBlue,'Assets/shapes/oval.jpeg', onPressed: () {
                _playSoundoval();
              }),
              ContainerFruit(Colors.green,'Assets/shapes/triangle.jpeg', onPressed: () {
                _playSoundtriangle();
              }),
              ContainerFruit(Colors.lightGreen,'Assets/shapes/diamond.jpeg', onPressed: () {
                _playSounddiamond();
              }),
              ContainerFruit(Colors.yellow,'Assets/shapes/star.jpeg', onPressed: () {
                _playSoundstar();
              }),
              ContainerFruit(Colors.black,'Assets/shapes/cone.jpeg', onPressed: () {
                _playSoundcone();
              }),
              ContainerFruit(Colors.grey,'Assets/shapes/hexagon.jpeg', onPressed: () {
                _playSoundhexagon();
              }),
              ContainerFruit(Colors.purple,'Assets/shapes/arrow.jpg', onPressed: () {
                _playSoundarrow();
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

  static void _playSoundcircle() {
    player.play('circle.m4a');
  }
  static void _playSoundsquare() {
    player.play('square.m4a');
  }
  static void _playSoundoval() {
    player.play('oval.m4a');
  }
  static void _playSoundtriangle() {
    player.play('triangle.m4a');
  }
  static void _playSoundrectangle() {
    player.play('rectangle.m4a');
  }
  static void _playSounddiamond() {
    player.play('diamond.m4a');
  }
  static void _playSoundstar() {
    player.play('star.m4a');
  }
  static void _playSoundhexagon() {
    player.play('hexagon.m4a');
  }
  static void _playSoundarrow() {
    player.play('arrow.mp3');
  }
  static void _playSoundcone() {
    player.play('cone.m4a');
  }




}
