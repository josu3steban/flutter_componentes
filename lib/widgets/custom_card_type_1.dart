import 'package:app_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({ Key? key }): super( key: key );

  @override 
  Widget build( BuildContext context ) {
    return Card(
      child: Column(
        children: [

          ListTile(title: const Text('Título de card'), subtitle: const Text('Este es el subtitulo de de la tarjete de la practica de componentes del curso de flutter'), leading: Icon(Icons.photo_album_outlined, color: AppTheme.secondary,)),

          Padding(
            padding: const EdgeInsets.only( right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              
              children: [
                TextButton(onPressed: () {}, child: const Text('Cancelar')),
                TextButton(onPressed: () {}, child: const Text('Ok')),
              ],
            ),
          )
        ],
      ),
    );
  }
}