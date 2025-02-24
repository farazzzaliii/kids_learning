import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MyFruit extends StatelessWidget {
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
            ContainerFruit(Colors.pink, 'Assets/fruits/apple.jpeg', onPressed: () {
              _playSoundapple();

            }),
            ContainerFruit(Colors.pink, 'Assets/fruits/bananaai.jpeg', onPressed: () {
              _playSoundbanana();
            }),
            ContainerFruit(Colors.blue, 'Assets/fruits/peachai.jpeg' , onPressed: () {
              _playSoundpeach();
            }),
            ContainerFruit(Colors.lightBlue,'Assets/fruits/mango.jpeg', onPressed: () {
              _playSoundmango();
            }),
            ContainerFruit(Colors.green,'Assets/fruits/kiwi.jpeg', onPressed: () {
              _playSoundkiwi();
            }),
            ContainerFruit(Colors.lightGreen,'Assets/fruits/grapes.jpeg', onPressed: () {
              _playSoundgrapes();
            }),
            ContainerFruit(Colors.yellow,'Assets/fruits/apricot.jpeg', onPressed: () {
              _playSoundapricot();
            }),
            ContainerFruit(Colors.grey,'Assets/fruits/lemon.jpeg', onPressed: () {
              _playSoundlemon();
            }),
            ContainerFruit(Colors.purple,'Assets/fruits/orange.jpeg', onPressed: () {
              _playSoundorange();
            }),
            ContainerFruit(Colors.black,'Assets/fruits/papaya.jpeg', onPressed: () {
              _playSoundpapaya();
            }),
            ContainerFruit(Colors.brown,'Assets/fruits/pineapple.jpeg', onPressed: () {
              _playSoundpineapple();
            }),
            ContainerFruit( Colors.brown.shade400,'Assets/fruits/pomagranate.jpeg', onPressed: () {
              _playSoundpomegranate();
            }),
            ContainerFruit( Colors.brown.shade400,'Assets/fruits/strawberry.jpeg', onPressed: () {
              _playSoundstrawberry();
            }),
            ContainerFruit( Colors.brown.shade400,'Assets/fruits/watermelon.jpeg', onPressed: () {
              _playSoundwatermelon();
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

static void _playSoundapple() {
player.play('apple.mp3');
}
static void _playSoundbanana() {
player.play('banana.mp3');
}
static void _playSoundpeach() {
player.play('peach.mp3');
}
static void _playSoundmango() {
player.play('mango.mp3');
}
static void _playSoundkiwi() {
player.play('kiwi.mp3');
}
static void _playSoundgrapes() {
player.play('grapes.mp3');
}
static void _playSoundapricot() {
player.play('apricot.mp3');
}
static void _playSoundlemon() {
player.play('lemon.mp3');
}
static void _playSoundorange() {
player.play('orange.mp3');
}
static void _playSoundpapaya() {
player.play('papaya.mp3');
}
static void _playSoundpineapple() {
player.play('pineapple.mp3');
}
static void _playSoundpomegranate() {
player.play('Pomegranate.mp3');
}
static void _playSoundstrawberry() {
  player.play('strawberry.mp3');
}

static void _playSoundwatermelon() {
  player.play('watermelon.mp3');
}



}
