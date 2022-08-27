import 'package:flutter/material.dart';
import 'package:parley/src/components/form.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SupaFlutter Auth'),
      ),
      body: Column(
        children: const [
          AuthForm(
            titleText: 'Sign Up',
          ),
        ],
      ),
    );
  }
}