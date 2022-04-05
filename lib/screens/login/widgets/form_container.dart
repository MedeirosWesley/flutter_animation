import 'package:flutter/material.dart';
import 'package:flutter_animations/screens/login/widgets/input_filed.dart';

class FormContainer extends StatelessWidget {
  const FormContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
          child: Column(
        children: [
          InputField(
              hint: "Username", obscure: false, icon: Icons.person_outline),
          InputField(hint: "Passaword", obscure: true, icon: Icons.lock_outline)
        ],
      )),
    );
  }
}
