import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_block_test_app/feature/login/presentation/cubit/login_cubit.dart';
import 'package:flutter_block_test_app/feature/login/presentation/cubit/login_state.dart';
import 'package:flutter_block_test_app/feature/task/domain/entity/task_entity.dart';
import 'package:flutter_block_test_app/feature/task/domain/repository/task_repository.dart';
import 'package:flutter_block_test_app/feature/task/presentation/bloc/task_bloc_event.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import 'task_bloc_state.dart';

@lazySingleton
class TaskBloc extends Bloc<TaskEvent, TaskBlocState> {
  TaskBloc({
    @Named('TaskRepository') required TaskRepository taskRepository,
    required LoginCubit loginCubit,
  })  : _taskRepository = taskRepository,
        _loginCubit = loginCubit,
        super(const TaskBlocState()) {
    on<InitTasks>(_onInitTasks);
    on<SelectTask>(_onSelectTask);
    on<AddTask>(_onAddTask);
    on<RemoveTask>(_onRemoveTask);
    on<AuthStateChanged>(_onAuthStateChanged);

    _authSubscription = _loginCubit.stream.listen((loginState) {
      add(TaskEvent.authStateChanged(loginState.authStatus));
    });
  }

  final TaskRepository _taskRepository;
  final LoginCubit _loginCubit;
  late final StreamSubscription _authSubscription;
  final Uuid uuid = const Uuid();

  Future<void> _onInitTasks(
      InitTasks event, Emitter<TaskBlocState> emit) async {
    emit(state.copyWith(dataLoadingStatus: DataLoadingStatus.loading));
    final response = await _taskRepository.getAllTasks();
    response.fold(
      (l) => emit(state.copyWith(dataLoadingStatus: DataLoadingStatus.failure)),
      (r) => emit(state.copyWith(
        dataLoadingStatus: DataLoadingStatus.success,
        tasks: r,
      )),
    );
  }

  void _onSelectTask(SelectTask event, Emitter<TaskBlocState> emit) {
    emit(state.copyWith(selectedTask: event.task));
  }

  void _onAddTask(AddTask event, Emitter<TaskBlocState> emit) {
    try {
      emit(state.copyWith(addTaskStatus: AddTaskStatus.loading));
      final currentTasks = [...state.tasks];
      currentTasks.add(TaskEntity(
        id: uuid.v4(),
        name: 'New Task',
        description: 'New created task for testing purpose',
        createdAt: DateTime.now(),
      ));
      emit(state.copyWith(
        addTaskStatus: AddTaskStatus.success,
        tasks: currentTasks,
      ));
    } catch (_) {
      emit(state.copyWith(addTaskStatus: AddTaskStatus.failure));
    }
  }

  void _onRemoveTask(RemoveTask event, Emitter<TaskBlocState> emit) {
    try {
      emit(state.copyWith(removeTaskStatus: RemoveTaskStatus.loading));
      final currentTasks = [...state.tasks];
      currentTasks.removeWhere((item) => item.id == event.taskId);
      emit(state.copyWith(
        removeTaskStatus: RemoveTaskStatus.success,
        tasks: currentTasks,
      ));
    } catch (_) {
      emit(state.copyWith(removeTaskStatus: RemoveTaskStatus.failure));
    }
  }

  void _onAuthStateChanged(
      AuthStateChanged event, Emitter<TaskBlocState> emit) {
    if (event.authStatus == LoginStatus.signedOut) {
      emit(const TaskBlocState());
    } else if (event.authStatus == LoginStatus.signedId) {
      add(const TaskEvent.initTasks());
    }
  }

  @override
  Future<void> close() async {
    await _authSubscription.cancel();
    return super.close();
  }
}
