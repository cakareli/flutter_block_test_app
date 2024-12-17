import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_block_test_app/feature/login/presentation/cubit/login_cubit.dart';
import 'package:flutter_block_test_app/feature/login/presentation/cubit/login_state.dart';
import 'package:flutter_block_test_app/feature/login/presentation/pages/login_page.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.authStatus == LoginStatus.signedId) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const SizedBox()),
          );
        } else if (state.authStatus == LoginStatus.signedOut) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const LoginPage()),
          );
        }
      },
      child: Scaffold(
        appBar: null,
        body: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Authentication in progress, please wait...'),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: CircularProgressIndicator(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
