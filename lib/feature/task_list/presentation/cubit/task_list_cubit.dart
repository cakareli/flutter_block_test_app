import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_block_test_app/feature/task_list/domain/repository/task_list_repository.dart';
import 'package:flutter_block_test_app/feature/task_list/presentation/cubit/task_list_state.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class TaskListCubit extends Cubit<TaskListState> {
  TaskListCubit(
      {@Named('TaskListRepository')
      required TaskListRepository taskListRepository})
      : _taskListRepository = taskListRepository,
        super(const TaskListState.initial());

  final TaskListRepository _taskListRepository;

  void init() async {
    emit(state.copyWith(dataLoadingStatus: DataLoadingStatus.loading));
    final response = await _taskListRepository.getAllTasks();
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
