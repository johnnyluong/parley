import 'package:flutter/material.dart';
import 'package:parley/src/components/email_form.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SupaFlutter Auth'),
      ),
      body: const EmailOnlyFieldForm(
        titleText: 'Enter your email address/phone to reset your password',
      ),
    );
  }
}