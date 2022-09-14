import 'package:app_components/widgets/widgets.dart';
import 'package:flutter/material.dart';


class CardScreen extends StatelessWidget {

  const CardScreen({ Key? key }): super( key: key );

  @override 
  Widget build( BuildContext context ) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Tarjetas'),
      ),

      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 10, vertical: 5 ),
        children: const <Widget>[
          CustomCardType1(),
          SizedBox( height: 10 ),
          CustomCardtType2( imageUrl: 'https://fondosmil.com/fondo/13723.jpg', title: 'Título 1',),
          SizedBox( height: 10 ),
          CustomCardtType2( imageUrl: 'https://www.todofondos.net/wp-content/uploads/4k-fondo-de-pantalla-minimalista.jpg'),
          SizedBox( height: 10 ),
          CustomCardtType2( imageUrl: 'https://www.todofondos.net/wp-content/uploads/fondo-de-pantalla-minimalista-hd-android.jpg')
        ],
        
      ),
    );    
  }
  
}