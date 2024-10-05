import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  GlobalKey<FormState> formkey = GlobalKey();
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController repasswordCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formkey,
        child: Column(
          children: [


            TextFormField(
              controller: nameCtrl,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                labelText: "Nombre",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "El Nombre es Mandatorio!";
                } else {
                  return null;
                }
              },
            ),


            TextFormField(
              controller: emailCtrl,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: "Correo",
              ),
              validator: (value) {
                const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
                  r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
                  r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
                  r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
                  r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
                  r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
                  r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';

                final regex = RegExp(pattern);

                if (value!.isEmpty) {
                  return "El Correo es Mandatorio!";
                } else if (!regex.hasMatch(value)) {
                  return 'Introduzca un Email Valido!';
                } else {
                  return null;
                }
              },
            ),


            TextFormField(
              controller: passwordCtrl,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Contraseña",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "El Password es Mandatorio!";
                } else if (value.length != 10) {
                  return 'El Password debe poseer 10 digitos';
                } else {
                  return null;
                }
              },
            ),


            TextFormField(
              controller: repasswordCtrl,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Contraseña",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "El Password es Mandatorio!";
                } else if (value != passwordCtrl.text.toString()) {
                  return 'El Password No coincide!';
                } else {
                  return null;
                }
              },
            ),


            ElevatedButton(
              onPressed: () => saveForm(),
              child: const Text("Continuar"),
            ),


          ],
        ));
  }

  saveForm() {
    if (formkey.currentState!.validate()) {
      debugPrint(
          "${nameCtrl.text} - ${emailCtrl.text} - ${passwordCtrl.text} - ${repasswordCtrl.text}");
      formkey.currentState!.reset();
    }
  }
}
