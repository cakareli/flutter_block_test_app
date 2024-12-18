import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_block_test_app/config/injection.dart';
import 'package:flutter_block_test_app/feature/login/presentation/cubit/login_cubit.dart';
import 'package:flutter_block_test_app/feature/login/presentation/cubit/login_state.dart';
import 'package:flutter_block_test_app/feature/login/presentation/pages/login_page.dart';
import 'package:flutter_block_test_app/feature/login/presentation/pages/splash_screen_page.dart';
import 'feature/task/presentation/cubit/task_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    /// Global cubit declaration
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<LoginCubit>()..checkAuth(),
        ),

        /// init() won't be triggered untill TaskCubit is used because cubit is lazySingleton
        BlocProvider(
          create: (context) => getIt<TaskCubit>()..init(),
        ),
      ],
      child: BlocConsumer<LoginCubit, LoginState>(
        /// Listens if during session user logs out
        listenWhen: (previous, current) {
          return previous.authStatus == LoginStatus.signedId &&
              current.authStatus == LoginStatus.signedOut;
        },
        listener: (context, state) {
          if (state.authStatus == LoginStatus.signedOut) {
            navigatorKey.currentState?.pushReplacement(
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          }
        },
        builder: (context, state) => MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          navigatorKey: navigatorKey,
          home: const SplashScreenPage(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
