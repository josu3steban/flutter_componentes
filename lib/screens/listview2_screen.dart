import 'package:flutter/material.dart';


class Listview2Screen extends StatelessWidget {

  const Listview2Screen({ Key? key }): super( key: key );


  final options = const ['God of war', 'Destiny 2', 'Spiderman', 'Elden ring', 'GTA 5'];


  @override 
  Widget build( BuildContext context ) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('List View Screen 2'),
        elevation: 0,
      ),

      body: Center(
        child: ListView.separated(

          itemCount: options.length,

          separatorBuilder: ( _, __ ) => const Divider(),

          itemBuilder: ( context, index ) => ListTile( title: Text(options[index]), trailing: const Icon(Icons.arrow_forward_ios),),

        ),
      ),
      
    );
  }
}