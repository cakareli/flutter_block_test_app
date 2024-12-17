import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_block_test_app/feature/login/presentation/cubit/login_cubit.dart';
import 'package:flutter_block_test_app/feature/login/presentation/cubit/login_state.dart';
import 'package:flutter_block_test_app/feature/task/presentation/pages/task_list_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final loginState = context.watch<LoginCubit>().state;
    return Scaffold(
      appBar: null,
      body: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state.loginFieldsInputCheck == LoginFieldsInputCheck.success) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Login success'),
                duration: Duration(seconds: 2), // Toast duration
                behavior: SnackBarBehavior.floating, // Floating like a toast
                margin: EdgeInsets.all(16), // Adds padding around the SnackBar
              ),
            );
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => const TaskListPage()),
            );
          } else if (state.loginFieldsInputCheck ==
              LoginFieldsInputCheck.failure) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Login error'),
                duration: Duration(seconds: 2), // Toast duration
                behavior: SnackBarBehavior.floating, // Floating like a toast
                margin: EdgeInsets.all(16), // Adds padding around the SnackBar
              ),
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: usernameController,
                decoration: const InputDecoration(hintText: 'Username'),
              ),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(hintText: 'Password'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 10),
                      child: loginState.authStatus == LoginStatus.loading
                          ? const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                              ),
                            )
                          : const Text(
                              'Login',
                              style: TextStyle(color: Colors.white),
                            ),
                    ),
                  ),
                  onTap: () async {
                    // ! Bloc
                    await context.read<LoginCubit>().login(
                          username: usernameController.text,
                          password: passwordController.text,
                        );
                    setState(() {
                      usernameController.clear();
                      passwordController.clear();
                    });
                    // ! GetIt
                    // getIt<LoginCubit>().login(
                    //   username: usernameController.text,
                    //   password: passwordController.text,
                    // );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
