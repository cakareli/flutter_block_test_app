import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();

    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: null,
      body: Column(
        children: [
          TextFormField(
            controller: usernameController,
          ),
          TextFormField(
            controller: passwordController,
            obscureText: true,
          ),
          GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
