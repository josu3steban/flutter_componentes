import 'package:flutter/material.dart';


class Listview1Screen extends StatelessWidget {

  const Listview1Screen({ Key? key }): super( key: key );

  final options = const ['God of war', 'Destiny 2', 'Spiderman', 'Elden ring', 'GTA 5'];

  @override 
  Widget build( BuildContext context ) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('List View Screen 1'),
      ),

      body: Center(
        child: ListView(
          children: <Widget>[
            
            ...options.map( (opt) => (

              ListTile(leading: const Icon(Icons.account_tree_outlined), title: Text(opt))
                  
            )).toList()
            
          ],
        ),
      ),
      
    );
  }
}