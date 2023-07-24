//padding hai aapan photos madhe gap ghenyasathi use karto
//button create karnyastahi [ OutlinedButton ] hai use karto
//Expanded widget hai aapan image la fitting karnyasthi use karto



import 'dart:math';//by using this package the number generator is produced mahnje dice che phostos change karnyastahi
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Title(color: Colors.black, child: Text('Dicee')),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}



class DicePage extends StatefulWidget { //stful hai statefulwidget banvnyasathi uase kartat
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber=6;
  int rightdicenumber=6;
  void diceface(){setState(() {
    leftdicenumber=Random().nextInt(6)+1;
    rightdicenumber=Random().nextInt(6)+1;//Random ha widget number genrator widget aahe
                 //.nextInt hai end of the range (numbers) set karto and +1 kelyane 0 pasun start nnahi hota te 1 pasun start hoto
    //range from 1-6
  });}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: ()//onPressed hai aapan for pressing the button effect denyasthi use karto
              {
                diceface();
                print('LEft Button pressed.');
              },
              child: Image.asset("images/dice$leftdicenumber.png"),
            ),
          ),
          Expanded(
            child: OutlinedButton(
              onPressed: (){
                diceface();
                print('Right Button Pressed.');
              },
              child: Image.asset('images/dice$rightdicenumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

