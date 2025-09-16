// import 'dart:io';

import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Sign Up.",
              style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            AuthField(hintText: "Name"),
            const SizedBox(height: 15.0),
            AuthField(hintText: "Email"),
            const SizedBox(height: 15.0),
            AuthField(hintText: "Password"),
            const SizedBox(height: 15.0,),
            AuthGradientButton(),
          ],
        ),
      ),
    );
  }
}
