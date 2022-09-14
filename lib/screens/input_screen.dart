import 'package:app_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({ Key? key }): super(key: key);


  @override 
  Widget build( BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'name'    : '',
      'email'   : '',
      'password': ''
    };
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Screen'),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: myFormKey,
            
            child: Column(
              children: <Widget>[
          
                 MyInputs(inputType: TextInputType.name, hintText: 'Nombre de usuario', labelText: 'Nombre', icon: Icons.person, formProperty: 'name', formValues: formValues),
                const SizedBox( height: 20),
          
                 MyInputs(inputType: TextInputType.emailAddress, hintText: 'Email', labelText: 'Email', icon: Icons.alternate_email_outlined, formProperty: 'email', formValues: formValues),
                const SizedBox( height: 20),
          
                MyInputs(inputType: TextInputType.visiblePassword, obscureText: true, hintText: 'Contraseña', labelText: 'Contraseña', icon: Icons.password_outlined, formProperty: 'password', formValues: formValues),
                const SizedBox( height: 20),

                DropdownButtonFormField<String>(
                  items: const <DropdownMenuItem<String>>[

                    DropdownMenuItem(value: 'user', child: Text('Usuario')),
                    DropdownMenuItem(value: 'superuser', child: Text('Super Usuario')),
                    DropdownMenuItem(value: 'developer', child: Text('Desarrolador')),
                    DropdownMenuItem(value: 'admin', child: Text('Admin')),
                    
                  ],

                  onChanged: (value) => {
                    formValues['role'] = value ?? 'user'
                  },
                ),
          
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Text('Guardar', textAlign: TextAlign.center,),
                  ),
          
                  onPressed: () {

                    FocusScope.of(context).requestFocus(FocusNode());

                    if(!myFormKey.currentState!.validate()) return;
                    
                    // ignore: avoid_print
                    print(formValues);
                  },
                )
                
              ],
            ),
          ),
        ),
      )
    );
  }
}