import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_block_test_app/feature/task/domain/entity/task_entity.dart';

part 'task_bloc_state.freezed.dart';

enum DataLoadingStatus { initial, loading, success, failure }

enum AddTaskStatus { initial, loading, success, failure }

enum RemoveTaskStatus { initial, loading, success, failure }

@freezed
class TaskBlocState with _$TaskBlocState {
  const factory TaskBlocState({
    @Default(DataLoadingStatus.initial) DataLoadingStatus dataLoadingStatus,
    @Default(AddTaskStatus.initial) AddTaskStatus addTaskStatus,
    @Default(RemoveTaskStatus.initial) RemoveTaskStatus removeTaskStatus,
    @Default([]) List<TaskEntity> tasks,
    TaskEntity? selectedTask,
  }) = _TaskBlocState;

  const TaskBlocState._();
}
