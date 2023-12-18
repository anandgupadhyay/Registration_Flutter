import 'package:flutter/material.dart';
import 'package:tors_tv/widgets/text_field.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  TextEditingController _emailText = TextEditingController();
  TextEditingController _fullNameText = TextEditingController();
  TextEditingController _passwdText = TextEditingController();
  TextEditingController _confirmPasswdText = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Registration"),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(controller: _emailText, displayLabel: "Email"),
              CustomTextField(controller: _fullNameText, displayLabel: "Full Name"),
              CustomTextField(controller: _passwdText, displayLabel: "Password"),
              CustomTextField(controller: _confirmPasswdText, displayLabel: "Confirm Password"),

            ],
          ),
        ),
      ),
    );
  }
}
