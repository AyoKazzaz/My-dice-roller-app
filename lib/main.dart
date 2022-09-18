import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.purple[300],
      appBar:AppBar(
        title: Text('Dice Roller'),
        backgroundColor: Colors.purple[400],
      ),
      body:ImagePage() , 
    ),
  ),
  );
}

  
class ImagePage extends StatefulWidget {
  

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftImageNumber = 1;
  int rightImageNumber = 1;
 void changeImage() {
    leftImageNumber = Random().nextInt(5) + 1;
    rightImageNumber = Random().nextInt(5) + 1;
  }
  @override
  Widget build(BuildContext context) {
  
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        
      Row(
        children: [
          
          Expanded(
            //flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextButton(
                child: Image.asset('images/dice$leftImageNumber.png'),
                onPressed: (){
                  setState(() {
                     changeImage();
                    });
               
                },),
            ),
          ),
          
          Expanded(
            //flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextButton(
                child: Image.asset('images/dice$rightImageNumber.png'),
                onPressed: (){
                 setState(() {
                     changeImage();
                    });
                },),
            ),
          ),
          
        ],
      )
      ],
    );
  }
}
