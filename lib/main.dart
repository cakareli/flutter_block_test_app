import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_block_test_app/config/injection.dart';
import 'package:flutter_block_test_app/feature/login/presentation/cubit/login_cubit.dart';
import 'package:flutter_block_test_app/feature/login/presentation/pages/splash_screen_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ! set TaskCubit globally
    // MultiBlocProvider(
    //   providers: [
    //     BlocProvider<TaskCubit>(create: (_) => getIt<TaskCubit>()..init()),
    //     BlocProvider<LoginCubit>(create: (_) => getIt<LoginCubit>()),
    //   ],
    //   child: const MyApp(),
    // ),
    return BlocProvider(
      create: (context) => getIt<LoginCubit>()..checkAuth(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreenPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
