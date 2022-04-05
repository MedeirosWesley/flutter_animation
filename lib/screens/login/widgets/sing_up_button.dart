import 'package:flutter/material.dart';

class SingUpButton extends StatelessWidget {
  const SingUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 160.0),
      child: TextButton(
        onPressed: () {},
        child: const Text(
          "Não possui uma conta? Cadastre-se!",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontSize: 15.0,
              letterSpacing: 0.5),
        ),
      ),
    );
  }
}
