// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskBlocState {
  DataLoadingStatus get dataLoadingStatus => throw _privateConstructorUsedError;
  AddTaskStatus get addTaskStatus => throw _privateConstructorUsedError;
  RemoveTaskStatus get removeTaskStatus => throw _privateConstructorUsedError;
  List<TaskEntity> get tasks => throw _privateConstructorUsedError;
  TaskEntity? get selectedTask => throw _privateConstructorUsedError;

  /// Create a copy of TaskBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskBlocStateCopyWith<TaskBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskBlocStateCopyWith<$Res> {
  factory $TaskBlocStateCopyWith(
          TaskBlocState value, $Res Function(TaskBlocState) then) =
      _$TaskBlocStateCopyWithImpl<$Res, TaskBlocState>;
  @useResult
  $Res call(
      {DataLoadingStatus dataLoadingStatus,
      AddTaskStatus addTaskStatus,
      RemoveTaskStatus removeTaskStatus,
      List<TaskEntity> tasks,
      TaskEntity? selectedTask});

  $TaskEntityCopyWith<$Res>? get selectedTask;
}

/// @nodoc
class _$TaskBlocStateCopyWithImpl<$Res, $Val extends TaskBlocState>
    implements $TaskBlocStateCopyWith<$Res> {
  _$TaskBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataLoadingStatus = null,
    Object? addTaskStatus = null,
    Object? removeTaskStatus = null,
    Object? tasks = null,
    Object? selectedTask = freezed,
  }) {
    return _then(_value.copyWith(
      dataLoadingStatus: null == dataLoadingStatus
          ? _value.dataLoadingStatus
          : dataLoadingStatus // ignore: cast_nullable_to_non_nullable
              as DataLoadingStatus,
      addTaskStatus: null == addTaskStatus
          ? _value.addTaskStatus
          : addTaskStatus // ignore: cast_nullable_to_non_nullable
              as AddTaskStatus,
      removeTaskStatus: null == removeTaskStatus
          ? _value.removeTaskStatus
          : removeTaskStatus // ignore: cast_nullable_to_non_nullable
              as RemoveTaskStatus,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
      selectedTask: freezed == selectedTask
          ? _value.selectedTask
          : selectedTask // ignore: cast_nullable_to_non_nullable
              as TaskEntity?,
    ) as $Val);
  }

  /// Create a copy of TaskBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskEntityCopyWith<$Res>? get selectedTask {
    if (_value.selectedTask == null) {
      return null;
    }

    return $TaskEntityCopyWith<$Res>(_value.selectedTask!, (value) {
      return _then(_value.copyWith(selectedTask: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaskBlocStateImplCopyWith<$Res>
    implements $TaskBlocStateCopyWith<$Res> {
  factory _$$TaskBlocStateImplCopyWith(
          _$TaskBlocStateImpl value, $Res Function(_$TaskBlocStateImpl) then) =
      __$$TaskBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DataLoadingStatus dataLoadingStatus,
      AddTaskStatus addTaskStatus,
      RemoveTaskStatus removeTaskStatus,
      List<TaskEntity> tasks,
      TaskEntity? selectedTask});

  @override
  $TaskEntityCopyWith<$Res>? get selectedTask;
}

/// @nodoc
class __$$TaskBlocStateImplCopyWithImpl<$Res>
    extends _$TaskBlocStateCopyWithImpl<$Res, _$TaskBlocStateImpl>
    implements _$$TaskBlocStateImplCopyWith<$Res> {
  __$$TaskBlocStateImplCopyWithImpl(
      _$TaskBlocStateImpl _value, $Res Function(_$TaskBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataLoadingStatus = null,
    Object? addTaskStatus = null,
    Object? removeTaskStatus = null,
    Object? tasks = null,
    Object? selectedTask = freezed,
  }) {
    return _then(_$TaskBlocStateImpl(
      dataLoadingStatus: null == dataLoadingStatus
          ? _value.dataLoadingStatus
          : dataLoadingStatus // ignore: cast_nullable_to_non_nullable
              as DataLoadingStatus,
      addTaskStatus: null == addTaskStatus
          ? _value.addTaskStatus
          : addTaskStatus // ignore: cast_nullable_to_non_nullable
              as AddTaskStatus,
      removeTaskStatus: null == removeTaskStatus
          ? _value.removeTaskStatus
          : removeTaskStatus // ignore: cast_nullable_to_non_nullable
              as RemoveTaskStatus,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
      selectedTask: freezed == selectedTask
          ? _value.selectedTask
          : selectedTask // ignore: cast_nullable_to_non_nullable
              as TaskEntity?,
    ));
  }
}

/// @nodoc

class _$TaskBlocStateImpl extends _TaskBlocState {
  const _$TaskBlocStateImpl(
      {this.dataLoadingStatus = DataLoadingStatus.initial,
      this.addTaskStatus = AddTaskStatus.initial,
      this.removeTaskStatus = RemoveTaskStatus.initial,
      final List<TaskEntity> tasks = const [],
      this.selectedTask})
      : _tasks = tasks,
        super._();

  @override
  @JsonKey()
  final DataLoadingStatus dataLoadingStatus;
  @override
  @JsonKey()
  final AddTaskStatus addTaskStatus;
  @override
  @JsonKey()
  final RemoveTaskStatus removeTaskStatus;
  final List<TaskEntity> _tasks;
  @override
  @JsonKey()
  List<TaskEntity> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final TaskEntity? selectedTask;

  @override
  String toString() {
    return 'TaskBlocState(dataLoadingStatus: $dataLoadingStatus, addTaskStatus: $addTaskStatus, removeTaskStatus: $removeTaskStatus, tasks: $tasks, selectedTask: $selectedTask)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskBlocStateImpl &&
            (identical(other.dataLoadingStatus, dataLoadingStatus) ||
                other.dataLoadingStatus == dataLoadingStatus) &&
            (identical(other.addTaskStatus, addTaskStatus) ||
                other.addTaskStatus == addTaskStatus) &&
            (identical(other.removeTaskStatus, removeTaskStatus) ||
                other.removeTaskStatus == removeTaskStatus) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.selectedTask, selectedTask) ||
                other.selectedTask == selectedTask));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      dataLoadingStatus,
      addTaskStatus,
      removeTaskStatus,
      const DeepCollectionEquality().hash(_tasks),
      selectedTask);

  /// Create a copy of TaskBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskBlocStateImplCopyWith<_$TaskBlocStateImpl> get copyWith =>
      __$$TaskBlocStateImplCopyWithImpl<_$TaskBlocStateImpl>(this, _$identity);
}

abstract class _TaskBlocState extends TaskBlocState {
  const factory _TaskBlocState(
      {final DataLoadingStatus dataLoadingStatus,
      final AddTaskStatus addTaskStatus,
      final RemoveTaskStatus removeTaskStatus,
      final List<TaskEntity> tasks,
      final TaskEntity? selectedTask}) = _$TaskBlocStateImpl;
  const _TaskBlocState._() : super._();

  @override
  DataLoadingStatus get dataLoadingStatus;
  @override
  AddTaskStatus get addTaskStatus;
  @override
  RemoveTaskStatus get removeTaskStatus;
  @override
  List<TaskEntity> get tasks;
  @override
  TaskEntity? get selectedTask;

  /// Create a copy of TaskBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskBlocStateImplCopyWith<_$TaskBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
