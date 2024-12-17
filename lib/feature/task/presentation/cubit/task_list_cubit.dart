import 'package:flutter_bloc/flutter_bloc.dart';
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
}
