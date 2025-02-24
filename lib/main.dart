
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';




void main() {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _tabs = [
    MyColors(),
    MyFruit(),
    MyVeg(),
    MyBody(),
    MyShapes(),
  ];

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('LEARNING APP FOR KIDS'),
          backgroundColor: Colors.green,
        ),
        body: _tabs[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          //backgroundColor: Colors.cyan,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Colors.green,
              icon: Icon(Icons.color_lens),
              label: 'Colors',
            ),
            BottomNavigationBarItem(

              icon: Icon(Icons.shopping_basket),
              label: 'Fruits',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.eco),
              label: 'Vegetables',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.accessibility),
              label: 'Body Parts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.layers),
              label: 'Shapes',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onTabSelected,
        ),
      ),
    );
  }
}

class MyColors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: Container(
          padding: EdgeInsets.all(10.0),
          child: GridView.count(
            crossAxisCount: 2, // Number of columns
            crossAxisSpacing: 10.0, // Spacing between columns
            mainAxisSpacing: 10.0, // Spacing between rows
            children: <Widget>[
              _buildContainerWithText("RED", Colors.red, onPressed: () {
                _playSoundred();

              }),
              _buildContainerWithText("PINK", Colors.pink, onPressed: () {
                _playSoundpink();
              }),
              _buildContainerWithText("BLUE", Colors.blue, onPressed: () {
                _playSoundblue();
              }),
              _buildContainerWithText("SKY-BLUE", Colors.lightBlue.shade200, onPressed: () {
                _playSoundskyblue();
              }),
              _buildContainerWithText("GREEN", Colors.green, onPressed: () {
                _playSoundgreen();
              }),
              _buildContainerWithText("LIGHT-GREEN", Colors.lightGreen, onPressed: () {
                _playSoundlihtgreen();
              }),
              _buildContainerWithText("YELLOW", Colors.yellow, onPressed: () {
                _playSoundyelow();
              }),
              _buildContainerWithText("GREY", Colors.grey, onPressed: () {
                _playSoundgrey();
              }),
              _buildContainerWithText("PURPLE", Colors.purple, onPressed: () {
                _playSoundpurple();
              }),
              _buildContainerWithText("BLACK", Colors.black, onPressed: () {
                _playSoundblack();
              }),
              _buildContainerWithText("BROWN", Colors.brown, onPressed: () {
                _playSoundbrown();
              }),
              _buildContainerWithText("Light-brown", Colors.brown.shade400, onPressed: () {
                _playSoundlightbrown();
              }),

            ],
          ),
        ),
      ),
    );

  }

  Widget _buildContainerWithText(String text, Color color, {VoidCallback? onPressed}) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: color,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Text color
              ),
            ),
          ),
        ),
      ),
    );
  }
  static AudioCache player = AudioCache();

  static void _playSoundred() {
    player.play('Red.mp3');
  }
  static void _playSoundpink() {
    player.play('pink.mp3');
  }
  static void _playSoundblue() {
    player.play('blue.mp3');
  }
  static void _playSoundskyblue() {
    player.play('skyblue.mp3');
  }
  static void _playSoundgreen() {
    player.play('green.mp3');
  }
  static void _playSoundlihtgreen() {
    player.play('lightgreen.mp3');
  }
  static void _playSoundyelow() {
    player.play('yellow.mp3');
  }
  static void _playSoundgrey() {
    player.play('grey.mp3');
  }
  static void _playSoundpurple() {
    player.play('purple.mp3');
  }
  static void _playSoundblack() {
    player.play('black.mp3');
  }
  static void _playSoundbrown() {
    player.play('brown.mp3');
  }
  static void _playSoundlightbrown() {
    player.play('lightbrown.mp3');
  }


}


class MyFruit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

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

class MyVeg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

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








class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

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


class MyShapes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

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



















/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('LEARNING APP'),
          centerTitle: true,
          backgroundColor: Colors.green.shade600,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              width: 500,
              height: 200,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.blue,
              ),
              //margin: EdgeInsets.all(5),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:(context){
                         return MyColors();

                        }));

                },
                child: Image.asset(
                    'Assets/mainpage/colorposter.png', fit: BoxFit.cover,),
              ),
            ),
            Container(
              width: 500,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.green,
              ),
              margin: EdgeInsets.all(5),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyFruit()),
                  );
                },
                child: Image.asset('Assets/mainpage/fruitposter.png' , fit: BoxFit.cover,),
              ),
            ),
            Container(
              width: 500,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.red,
              ),
              margin: EdgeInsets.all(5),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyVeg()),
                  );
                },
                child: Image.asset('Assets/mainpage/vegetable.png' , fit: BoxFit.cover,),
              ),
            ),
            Container(
              width: 500,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.yellow,
              ),
              margin: EdgeInsets.all(5),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyVeg()),
                  );

                },
                child: Image.asset('Assets/mainpage/bodypart.png' , fit: BoxFit.cover,),

              ),
            ),
            Container(
              width: 500,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.purple,
              ),
              margin: EdgeInsets.all(5),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyShapes()),
                  );

                },
                child: Image.asset('Assets/mainpage/shapesposter.png' , fit: BoxFit.cover,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/

