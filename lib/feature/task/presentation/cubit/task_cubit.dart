import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_block_test_app/feature/task/domain/entity/task_entity.dart';
import 'package:flutter_block_test_app/feature/task/domain/repository/task_repository.dart';

import 'package:flutter_block_test_app/feature/task/presentation/cubit/task_state.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class TaskCubit extends Cubit<TaskState> {
  TaskCubit({@Named('TaskRepository') required TaskRepository taskRepository})
      : _taskRepository = taskRepository,
        super(const TaskState.initial());

  final TaskRepository _taskRepository;

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

  void selectTask(TaskEntity task) {
    emit(state.copyWith(selectedTask: task));
  }

  void addTask() {
    try {
      emit(state.copyWith(addTaskStatus: AddTaskStatus.loading));
      final currentTasks = [...state.tasks];
      currentTasks.add(
        TaskEntity(
          id: currentTasks.length + 1,
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

  void removeTask({required int taskId}) {
    try {
      emit(state.copyWith(removeTaskStatus: RemoveTaskStatus.loading));
      final currentTasks = [...state.tasks];
      currentTasks.removeAt(taskId);
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
