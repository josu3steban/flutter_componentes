import 'package:app_components/routes/app_routes.dart';
import 'package:app_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({ Key? key }): super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',

      initialRoute: AppRoutes.initialRoute,

      routes: AppRoutes.getAppRoute(),

      onGenerateRoute: AppRoutes.onGenerateRoute,

      theme: AppTheme.lightTheme
    );
  }
}