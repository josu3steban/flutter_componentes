import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget{
  const AnimatedScreen({ Key? key }): super(key: key);

  @override 
  State<AnimatedScreen> createState() => _AnimatedScreemState();
}


class _AnimatedScreemState extends State<AnimatedScreen> {
 
  final Random _random = Random();
  double _width = 300;
  double _height = 300;
  Color _color = const Color.fromRGBO(0, 0, 0, 1);

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);


  void changeShape () {
    _width        = _random.nextInt(300).toDouble() + 50;
    _height       = _random.nextInt(300).toDouble() + 50;
    _color        = Color.fromRGBO(_random.nextInt(255), _random.nextInt(255), _random.nextInt(255), 1);
    _borderRadius = BorderRadius.circular(_random.nextInt(100).toDouble() + 10);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: const Duration( milliseconds: 400),
          curve: Curves.easeOutCubic,
          
          width: _width,
          height: _height,

          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius
          ),
        )
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.play_arrow),
        onPressed: changeShape,
      ),
    );
  }
  
}