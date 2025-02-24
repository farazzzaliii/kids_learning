// class MyColors extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('COLORS'),
//           backgroundColor: Colors.green.shade400,
//           leading: IconButton(
//             icon: Icon(Icons.arrow_back),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//         ),
//         body: Container(
//           padding: EdgeInsets.all(10.0),
//           child: GridView.count(
//             crossAxisCount: 2, // Number of columns
//             crossAxisSpacing: 10.0, // Spacing between columns
//             mainAxisSpacing: 10.0, // Spacing between rows
//             children: <Widget>[
//               _buildContainerWithText("RED", Colors.red, onPressed: () {
//                 _playSoundred();

//               }),
//               _buildContainerWithText("PINK", Colors.pink, onPressed: () {
//                 _playSoundpink();
//               }),
//               _buildContainerWithText("BLUE", Colors.blue, onPressed: () {
//                 _playSoundblue();
//               }),
//               _buildContainerWithText("SKY-BLUE", Colors.lightBlue.shade200, onPressed: () {
//                 _playSoundskyblue();
//               }),
//               _buildContainerWithText("GREEN", Colors.green, onPressed: () {
//                 _playSoundgreen();
//               }),
//               _buildContainerWithText("LIGHT-GREEN", Colors.lightGreen, onPressed: () {
//                 _playSoundlihtgreen();
//               }),
//               _buildContainerWithText("YELLOW", Colors.yellow, onPressed: () {
//                 _playSoundyelow();
//               }),
//               _buildContainerWithText("GREY", Colors.grey, onPressed: () {
//                 _playSoundgrey();
//               }),
//               _buildContainerWithText("PURPLE", Colors.purple, onPressed: () {
//                 _playSoundpurple();
//               }),
//               _buildContainerWithText("BLACK", Colors.black, onPressed: () {
//                 _playSoundblack();
//               }),
//               _buildContainerWithText("BROWN", Colors.brown, onPressed: () {
//                 _playSoundbrown();
//               }),
//               _buildContainerWithText("Light-brown", Colors.brown.shade400, onPressed: () {
//                 _playSoundlightbrown();
//               }),

//             ],
//           ),
//         ),
//       ),
//     );

//   }

//   Widget _buildContainerWithText(String text, Color color, {VoidCallback? onPressed}) {
//     return GestureDetector(
//       onTap: onPressed,
//       child: Container(
//         color: color,
//         child: Align(
//           alignment: Alignment.bottomCenter,
//           child: Padding(
//             padding: EdgeInsets.only(bottom: 8.0),
//             child: Text(
//               text,
//               style: TextStyle(
//                 fontSize: 16.0,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white, // Text color
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//   static AudioCache player = AudioCache();

//   static void _playSoundred() {
//     player.play('Red.mp3');
//   }
//   static void _playSoundpink() {
//     player.play('pink.mp3');
//   }
//   static void _playSoundblue() {
//     player.play('blue.mp3');
//   }
//   static void _playSoundskyblue() {
//     player.play('skyblue.mp3');
//   }
//   static void _playSoundgreen() {
//     player.play('green.mp3');
//   }
//   static void _playSoundlihtgreen() {
//     player.play('lightgreen.mp3');
//   }
//   static void _playSoundyelow() {
//     player.play('yellow.mp3');
//   }
//   static void _playSoundgrey() {
//     player.play('grey.mp3');
//   }
//   static void _playSoundpurple() {
//     player.play('purple.mp3');
//   }
//   static void _playSoundblack() {
//     player.play('black.mp3');
//   }
//   static void _playSoundbrown() {
//     player.play('brown.mp3');
//   }
//   static void _playSoundlightbrown() {
//     player.play('lightbrown.mp3');
//   }


// }










