import 'package:app_components/routes/app_routes.dart';
import 'package:app_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

 
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
        elevation: 0,
      ),

      body: ListView.separated(
        separatorBuilder: (_, __) => const Divider(), 

        itemCount: AppRoutes.menuOptions.length,

        itemBuilder: ( context, index ) => ListTile(

          title: Text(AppRoutes.menuOptions[index].name ),

          leading: Icon( AppRoutes.menuOptions[index].icon, color: AppTheme.secondary, ),

          onTap: () {
            Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
          },
        )
      ),
    );
  }
}