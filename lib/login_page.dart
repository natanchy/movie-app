import 'package:flutter/material.dart';
import 'package:movie_app/ui/colors.dart';
import 'package:movie_app/ui/text_style.dart';
import 'package:movie_app/ui/reuse_textfield_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 120),
                Text(
                  'Login Here',
                  style: lBold.copyWith(color: white),
                ),
                const SizedBox(height: 8),
                Text(
                  "Welcome Back you've\nbeen missed!",
                  textAlign: TextAlign.center,
                  style: sRegular.copyWith(color: white),
                ),
                const SizedBox(height: 40),
                ReuseTextfieldAuth(
                  controller: emailController,
                  labelText: "Email",
                  hintText: "Masukkan email kamu",
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20),
                ReuseTextfieldAuth(
                  controller: passwordController,
                  labelText: "Password",
                  hintText: "Masukkan password",
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}