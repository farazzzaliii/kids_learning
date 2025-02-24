import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MyVeg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('VEGETABLES'),
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
              ContainerFruit(Colors.pink, 'Assets/vegetable/carrot.jpeg', onPressed: () {
                _playSoundcarrot();

              }),
              ContainerFruit(Colors.pink, 'Assets/vegetable/tomato.jpeg', onPressed: () {
                _playSoundtomato();
              }),
              ContainerFruit(Colors.blue, 'Assets/vegetable/potato.jpeg' , onPressed: () {
                _playSoundpotato();
              }),
              ContainerFruit(Colors.lightBlue,'Assets/vegetable/spinach.jpeg', onPressed: () {
                _playSoundspinach();
              }),
              ContainerFruit(Colors.green,'Assets/vegetable/broccoli.jpeg', onPressed: () {
                _playSoundbroccoli();
              }),
              ContainerFruit(Colors.lightGreen,'Assets/vegetable/capsicum.jpeg', onPressed: () {
                _playSoundcapsicum();
              }),
              ContainerFruit(Colors.yellow,'Assets/vegetable/corn.jpeg', onPressed: () {
                _playSoundcorn();
              }),
              ContainerFruit(Colors.grey,'Assets/vegetable/cucumber.jpeg', onPressed: () {
                _playSoundcucumber();
              }),
              ContainerFruit(Colors.purple,'Assets/vegetable/greenbeans.jpeg', onPressed: () {
                _playSoundgreenbeans();
              }),
              ContainerFruit(Colors.black,'Assets/vegetable/cauliflower.jpeg', onPressed: () {
                _playSoundcauliflower();
              }),
              ContainerFruit(Colors.brown,'Assets/vegetable/onion.jpeg', onPressed: () {
                _playSoundonion();
              }),
              ContainerFruit( Colors.brown.shade400,'Assets/vegetable/garlic.jpeg', onPressed: () {
                _playSoundgarlic();
              }),
              ContainerFruit( Colors.brown.shade400,'Assets/vegetable/radish.jpeg', onPressed: () {
                _playSoundradish();
              }),
              ContainerFruit( Colors.brown.shade400,'Assets/vegetable/cabage.jpeg', onPressed: () {
                _playSoundcabage();
              }),
              ContainerFruit( Colors.brown.shade400,'Assets/vegetable/peas.jpeg', onPressed: () {
                _playSoundpeas();
              }),

              ContainerFruit( Colors.brown.shade400,'Assets/vegetable/pumpkin.jpeg', onPressed: () {
                _playSoundpumpkin();
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

  static void _playSoundbroccoli() {
    player.play('broccoli.mp3');
  }
  static void _playSoundcabage() {
    player.play('cabage.mp3');
  }
  static void _playSoundcarrot() {
    player.play('carrot.mp3');
  }
  static void _playSoundcapsicum() {
    player.play('capsicum.mp3');
  }
  static void _playSoundcauliflower() {
    player.play('cauliflower.mp3');
  }
  static void _playSoundcorn() {
    player.play('corn.mp3');
  }
  static void _playSoundcucumber() {
    player.play('cucumber.mp3');
  }
  static void _playSoundgarlic() {
    player.play('garlic.m4a');
  }
  static void _playSoundgreenbeans() {
    player.play('greenbeans.m4a');
  }
  static void _playSoundonion() {
    player.play('onion.m4a');
  }
  static void _playSoundpeas() {
    player.play('peas.m4a');
  }
  static void _playSoundpotato() {
    player.play('potatos.m4a');
  }
  static void _playSoundpumpkin() {
    player.play('pumpkin.m4a');
  }

  static void _playSoundradish() {
    player.play('radish.m4a');
  }
  static void _playSoundspinach() {
    player.play('spinach.m4a');
  }
  static void _playSoundtomato() {
    player.play('tomato.m4a');
  }


}
