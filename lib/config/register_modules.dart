import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppModule {
  @preResolve // Ensures the instance is created asynchronously before injection
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();
}
