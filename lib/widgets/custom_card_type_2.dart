import 'package:app_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardtType2 extends StatelessWidget {

  final String imageUrl;
  final String? title;
  
  const CustomCardtType2({ Key? key, required this.imageUrl, this.title }): super( key: key );

  @override 
  Widget build( BuildContext context ) {
    return Card(
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20)),
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 400),
            image: NetworkImage(imageUrl),
          ),

          if( title != null )
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Text( title! ),
            )
          
        ],
      ),
    );
  }
}