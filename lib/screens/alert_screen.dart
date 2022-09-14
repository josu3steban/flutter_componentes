import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () => alertDialog(context), child: const Text('Lanzar alerta', style: TextStyle( fontSize: 15),))
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.exit_to_app_rounded),
        onPressed: () { 
          Navigator.pop(context);
        }
      ),

      
    );
  }


  void alertDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20)),
          title: const Text('Esta es una alerta'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenidoa de la alerta'),
              FlutterLogo(size: 100,)
            ],
          ),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cerrar'))
          ],
        );
      }
    );
  }

}