import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets_import.dart' show CustomInputField;

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'Martin',
      'last_name': 'Lara',
      'email': 'correo@hotmail.com',
      'role': 'Admin',
      'password': 'martin1234',
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'Nombre',
                  icon: Icons.person,
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                CustomInputField(
                  labelText: 'Apellido',
                  icon: Icons.person,
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                CustomInputField(
                  labelText: 'Email',
                  icon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                CustomInputField(
                  labelText: 'Contraseña',
                  keyboardType: TextInputType.visiblePassword,
                  isPassword: true,
                  icon: Icons.lock,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(
                      value: 'Admin',
                      child: Text('Admin'),
                    ),
                    DropdownMenuItem(
                      value: 'SuperUser',
                      child: Text('SuperUser'),
                    ),
                    DropdownMenuItem(
                      value: 'User',
                      child: Text('User'),
                    ),
                  ],
                  onChanged: (value) {
                    if (kDebugMode) {
                      print(value);
                    }
                    formValues['role'] = value ?? 'User';
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    /// Una solución alternativa para ocultar el teclado cuando el usuario presiona el
                    /// botón.
                    FocusScope.of(context).requestFocus(FocusNode());
                    //
                    if (!myFormKey.currentState!.validate()) {
                      if (kDebugMode) {
                        print('Form no valido');
                      }
                    } else {
                      if (kDebugMode) {
                        print(formValues);
                      }
                    }
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar')),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
