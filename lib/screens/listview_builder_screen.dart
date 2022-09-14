import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({Key? key}): super(key: key);

  @override 
  Widget build( BuildContext context ) {
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return FadeInImage(
              fit: BoxFit.cover,
              width: double.infinity,
              height: 350,
              placeholder: const AssetImage('assets/jar-loading.gif'),
              image: NetworkImage('https://picsum.photos/400/350?image=${index+1}'),
            );
          }
        ),
      ),
    );
  }
}