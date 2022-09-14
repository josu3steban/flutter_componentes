import 'package:app_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}): super(key: key);

  @override 
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  
  double _sliderValue = 100;

  @override 
  Widget build( BuildContext context ) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Slider')
      ),

      body: Column(
        children: <Widget>[

          Slider.adaptive(
            min: 100,
            max: 600,
            value: _sliderValue,
            activeColor: AppTheme.secondary,
            onChanged: (value) {
              _sliderValue = value;
              setState(() { });
            },
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Image(
                width: _sliderValue,
                image: const NetworkImage('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/8911a890-1488-4033-b210-287b6a9c5319/deo6owg-586e44b5-e24f-4541-b06a-b1c550674a65.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzg5MTFhODkwLTE0ODgtNDAzMy1iMjEwLTI4N2I2YTljNTMxOVwvZGVvNm93Zy01ODZlNDRiNS1lMjRmLTQ1NDEtYjA2YS1iMWM1NTA2NzRhNjUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.qqfQocckiK9cU_We4oWDTfvjd3Ol7RbP3DLgz8JLR-0'),
              ),
            ),
          )
        ],
      )
    );
  }
}