
// *** This is Xylophone code
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp( xylophone() );

class xylophone extends StatelessWidget {
  const xylophone({Key? key}) : super(key: key);

  void sounds(int sound){
    final player=AudioCache();
    player.play('note$sound.wav');
  }
 Expanded Button({ required Color color, required int soundnumber }) {
  return Expanded(
     child: TextButton(
       style: ButtonStyle(
         backgroundColor: MaterialStateProperty.all(color),
       ),
       onPressed: () {
         sounds(soundnumber);
       }, child: Container(
     ),
     ),
   );
 }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[

        // ****   Method 1 to creat 7 button without function
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(
              //       backgroundColor: MaterialStateProperty.all(Colors.red),
              //     ),
              //       onPressed: (){
              //    sounds(1);
              //   }, child: Container(
              //   ),
              //   ),
              // ),
              //
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(
              //       backgroundColor: MaterialStateProperty.all(Colors.cyan)
              //     ),
              //       onPressed: (){
              //         sounds(2);
              //   },
              //     child: Container(),
              //   ),
              // ),
              //
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(
              //       backgroundColor: MaterialStateProperty.all(Colors.lime),
              //     ),
              //     onPressed: (){
              //       sounds(3);
              //   },
              //     child: Container(),
              //   ),
              // ),
              //
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(
              //       backgroundColor: MaterialStateProperty.all(Colors.yellow),
              //     ),
              //     onPressed: (){
              //       sounds(4);
              //     },
              //     child: Container(),
              //   ),
              // ),
              //
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(
              //       backgroundColor: MaterialStateProperty.all(Colors.black54),
              //     ),
              //       onPressed: (){
              //         sounds(5);
              //       }, child: Container(),
              //   ),
              // ),
              //
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(
              //       backgroundColor: MaterialStateProperty.all(Colors.pink),
              //     ),
              //     onPressed: (){
              //       sounds(6);
              //     }, child: Container(),
              //   ),
              // ),
              //
              // Expanded(
              //   child: TextButton(
              //     style: ButtonStyle(
              //       backgroundColor: MaterialStateProperty.all(Colors.deepOrangeAccent),
              //     ),
              //     onPressed: (){
              //       sounds(7);
              //     }, child: Container(),
              //   ),
              // ),

      // ****   Method 2 to creat 7 button with function
              Button(color: Colors.red, soundnumber: 1),
              Button(color: Colors.blue, soundnumber: 2),
              Button(color: Colors.lime, soundnumber: 3),
              Button(color: Colors.pinkAccent, soundnumber: 4),
              Button(color: Colors.teal, soundnumber: 5),
              Button(color: Colors.orange, soundnumber: 6),
              Button(color: Colors.amber, soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
