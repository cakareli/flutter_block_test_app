import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_block_test_app/feature/login/presentation/cubit/login_cubit.dart';
import 'package:flutter_block_test_app/feature/login/presentation/cubit/login_state.dart';
import 'package:flutter_block_test_app/feature/task/data/data_source/task_data_source.dart';
import 'package:flutter_block_test_app/feature/task/domain/entity/task_entity.dart';
import 'package:flutter_block_test_app/feature/task/domain/repository/task_repository.dart';

import 'package:flutter_block_test_app/feature/task/presentation/cubit/task_state.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class TaskCubit extends Cubit<TaskState> {
  TaskCubit({
    @Named('TaskRepository') required TaskRepository taskRepository,
    required LoginCubit loginCubit,
  })  : _taskRepository = taskRepository,
        _loginCubit = loginCubit,
        super(const TaskState.initial()) {
    _authSubscription = _loginCubit.stream.listen(_handleAuthStateChange);
  }

  final TaskRepository _taskRepository;
  final LoginCubit _loginCubit;
  late final StreamSubscription<LoginState> _authSubscription;

  void _handleAuthStateChange(LoginState loginState) {
    if (loginState.authStatus == LoginStatus.signedOut) {
      // Clear tasks on logout
      emit(const TaskState.initial());
    } else if (loginState.authStatus == LoginStatus.signedId) {
      // Reload tasks on login if needed
      init();
    }
  }

  void init() async {
    emit(state.copyWith(dataLoadingStatus: DataLoadingStatus.loading));
    final response = await _taskRepository.getAllTasks();
    response.fold((l) {
      emit(state.copyWith(dataLoadingStatus: DataLoadingStatus.failure));
    }, (r) {
      emit(state.copyWith(
        dataLoadingStatus: DataLoadingStatus.success,
        tasks: r,
      ));
    });
  }

  @override
  Future<void> close() async {
    await _authSubscription.cancel();
    return super.close();
  }

  void selectTask(TaskEntity task) {
    emit(state.copyWith(selectedTask: task));
  }

  void addTask() {
    try {
      emit(state.copyWith(addTaskStatus: AddTaskStatus.loading));
      final currentTasks = [...state.tasks];

      currentTasks.add(
        TaskEntity(
          id: uuid.v4(),
          name: 'New Task',
          description: 'New created task for testing purpose',
          createdAt: DateTime.now(),
        ),
      );
      emit(state.copyWith(
        addTaskStatus: AddTaskStatus.success,
        tasks: currentTasks,
      ));
    } catch (e) {
      emit(state.copyWith(addTaskStatus: AddTaskStatus.failure));
      rethrow;
    }
  }

  void removeTask({required String taskId}) {
    try {
      emit(state.copyWith(removeTaskStatus: RemoveTaskStatus.loading));
      final currentTasks = [...state.tasks];
      currentTasks.removeWhere((item) => item.id == taskId);
      emit(state.copyWith(
        removeTaskStatus: RemoveTaskStatus.success,
        tasks: currentTasks,
      ));
    } catch (e) {
      emit(state.copyWith(removeTaskStatus: RemoveTaskStatus.failure));
      rethrow;
    }
  }
}
