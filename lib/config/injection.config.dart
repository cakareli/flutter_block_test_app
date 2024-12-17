// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_block_test_app/config/register_modules.dart' as _i412;
import 'package:flutter_block_test_app/feature/login/data/data_sources/login_data_source.dart'
    as _i208;
import 'package:flutter_block_test_app/feature/login/data/data_sources/login_shared_preference_service.dart'
    as _i122;
import 'package:flutter_block_test_app/feature/login/data/repositories/login_repository_impl.dart'
    as _i421;
import 'package:flutter_block_test_app/feature/login/domain/repository/login_repository.dart'
    as _i1017;
import 'package:flutter_block_test_app/feature/login/presentation/cubit/login_cubit.dart'
    as _i422;
import 'package:flutter_block_test_app/feature/task_list/data/data_sources/task_list_data_source.dart'
    as _i1047;
import 'package:flutter_block_test_app/feature/task_list/data/repositories/task_list_repository_impl.dart'
    as _i866;
import 'package:flutter_block_test_app/feature/task_list/domain/repository/task_list_repository.dart'
    as _i104;
import 'package:flutter_block_test_app/feature/task_list/presentation/cubit/task_list_cubit.dart'
    as _i847;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => appModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i1047.TaskListDataSource>(
        () => _i1047.TaskListDataSourceImpl());
    gh.lazySingleton<_i122.LoginSharedPreferenceService>(() =>
        _i122.LoginSharedPreferenceService(gh<_i460.SharedPreferences>()));
    gh.lazySingleton<_i208.LoginDataSource>(() =>
        _i208.LoginDataSourceImpl(gh<_i122.LoginSharedPreferenceService>()));
    gh.lazySingleton<_i1017.LoginRepository>(
      () => _i421.LoginRepositoryImpl(gh<_i208.LoginDataSource>()),
      instanceName: 'LoginRepository',
    );
    gh.lazySingleton<_i104.TaskListRepository>(
      () => _i866.TaskListRepositoryImpl(gh<_i1047.TaskListDataSource>()),
      instanceName: 'TaskListRepository',
    );
    gh.lazySingleton<_i422.LoginCubit>(() => _i422.LoginCubit(
        loginRepository:
            gh<_i1017.LoginRepository>(instanceName: 'LoginRepository')));
    gh.lazySingleton<_i847.TaskListCubit>(() => _i847.TaskListCubit(
        taskListRepository:
            gh<_i104.TaskListRepository>(instanceName: 'TaskListRepository')));
    return this;
  }
}

class _$AppModule extends _i412.AppModule {}
