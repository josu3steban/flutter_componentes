import 'package:flutter/material.dart';

 class AvatarScreen extends StatelessWidget {

  const AvatarScreen({ Key? key }): super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla de Avatar'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              
              child: Text('DBZ'),
            ),
          )
        ],
      ),

      body: const Center(
        child: CircleAvatar(
          maxRadius: 150,
          backgroundImage: NetworkImage('https://www.todofondos.net/wp-content/uploads/1920x1080-Bulma-y-Goku-Full-HD-Wallpaper-e-Imagen-de-fondo.-1920x1080-1-768x432.jpg'),
        ),
      ),
    );
  }
  
 }