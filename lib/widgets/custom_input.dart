import 'package:flutter/material.dart';

class MyInputs extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final TextInputType? inputType;
  final IconData? icon;
  final bool obscureText;
  final String formProperty;
  final Map<String, dynamic> formValues;
  
  const MyInputs({

    Key? key,
    this.hintText,
    this.labelText,
    this.inputType,
    this.icon,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues

  }): super(key: key);

  @override 
  Widget build( BuildContext context ) {
    return TextFormField(

      //Propiedades del input
      keyboardType: inputType,
      obscureText: obscureText,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      validator: ( value ) {
        if (value == null) return 'Este campo es requerido';
        return (value.length < 4) ? 'Mínimo 4 carcateres' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,

      //estilos del input
      decoration: InputDecoration(
        hintText: hintText,
        // helperText: 'Solo letras',
        labelText: labelText,
        icon: (icon != null) ? Icon( icon ) : null
      ),

      //Valores del input
      onChanged: (value) => {
        formValues[formProperty] = value
      }
    );
  }
  
} 