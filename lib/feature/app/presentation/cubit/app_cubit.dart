import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_block_test_app/feature/app/presentation/cubit/app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial());
}
