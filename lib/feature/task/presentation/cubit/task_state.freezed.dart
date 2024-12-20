// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskState {
  DataLoadingStatus get dataLoadingStatus => throw _privateConstructorUsedError;
  RemoveTaskStatus get removeTaskStatus => throw _privateConstructorUsedError;
  AddTaskStatus get addTaskStatus => throw _privateConstructorUsedError;
  List<TaskEntity> get tasks => throw _privateConstructorUsedError;
  TaskEntity? get selectedTask => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DataLoadingStatus dataLoadingStatus,
            RemoveTaskStatus removeTaskStatus,
            AddTaskStatus addTaskStatus,
            List<TaskEntity> tasks,
            TaskEntity? selectedTask)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            DataLoadingStatus dataLoadingStatus,
            RemoveTaskStatus removeTaskStatus,
            AddTaskStatus addTaskStatus,
            List<TaskEntity> tasks,
            TaskEntity? selectedTask)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DataLoadingStatus dataLoadingStatus,
            RemoveTaskStatus removeTaskStatus,
            AddTaskStatus addTaskStatus,
            List<TaskEntity> tasks,
            TaskEntity? selectedTask)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskStateCopyWith<TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
  @useResult
  $Res call(
      {DataLoadingStatus dataLoadingStatus,
      RemoveTaskStatus removeTaskStatus,
      AddTaskStatus addTaskStatus,
      List<TaskEntity> tasks,
      TaskEntity? selectedTask});

  $TaskEntityCopyWith<$Res>? get selectedTask;
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataLoadingStatus = null,
    Object? removeTaskStatus = null,
    Object? addTaskStatus = null,
    Object? tasks = null,
    Object? selectedTask = freezed,
  }) {
    return _then(_value.copyWith(
      dataLoadingStatus: null == dataLoadingStatus
          ? _value.dataLoadingStatus
          : dataLoadingStatus // ignore: cast_nullable_to_non_nullable
              as DataLoadingStatus,
      removeTaskStatus: null == removeTaskStatus
          ? _value.removeTaskStatus
          : removeTaskStatus // ignore: cast_nullable_to_non_nullable
              as RemoveTaskStatus,
      addTaskStatus: null == addTaskStatus
          ? _value.addTaskStatus
          : addTaskStatus // ignore: cast_nullable_to_non_nullable
              as AddTaskStatus,
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

  /// Create a copy of TaskState
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
abstract class _$$InitialImplCopyWith<$Res>
    implements $TaskStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DataLoadingStatus dataLoadingStatus,
      RemoveTaskStatus removeTaskStatus,
      AddTaskStatus addTaskStatus,
      List<TaskEntity> tasks,
      TaskEntity? selectedTask});

  @override
  $TaskEntityCopyWith<$Res>? get selectedTask;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataLoadingStatus = null,
    Object? removeTaskStatus = null,
    Object? addTaskStatus = null,
    Object? tasks = null,
    Object? selectedTask = freezed,
  }) {
    return _then(_$InitialImpl(
      dataLoadingStatus: null == dataLoadingStatus
          ? _value.dataLoadingStatus
          : dataLoadingStatus // ignore: cast_nullable_to_non_nullable
              as DataLoadingStatus,
      removeTaskStatus: null == removeTaskStatus
          ? _value.removeTaskStatus
          : removeTaskStatus // ignore: cast_nullable_to_non_nullable
              as RemoveTaskStatus,
      addTaskStatus: null == addTaskStatus
          ? _value.addTaskStatus
          : addTaskStatus // ignore: cast_nullable_to_non_nullable
              as AddTaskStatus,
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

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.dataLoadingStatus = DataLoadingStatus.initial,
      this.removeTaskStatus = RemoveTaskStatus.initial,
      this.addTaskStatus = AddTaskStatus.initial,
      final List<TaskEntity> tasks = const [],
      this.selectedTask})
      : _tasks = tasks;

  @override
  @JsonKey()
  final DataLoadingStatus dataLoadingStatus;
  @override
  @JsonKey()
  final RemoveTaskStatus removeTaskStatus;
  @override
  @JsonKey()
  final AddTaskStatus addTaskStatus;
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
    return 'TaskState.initial(dataLoadingStatus: $dataLoadingStatus, removeTaskStatus: $removeTaskStatus, addTaskStatus: $addTaskStatus, tasks: $tasks, selectedTask: $selectedTask)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.dataLoadingStatus, dataLoadingStatus) ||
                other.dataLoadingStatus == dataLoadingStatus) &&
            (identical(other.removeTaskStatus, removeTaskStatus) ||
                other.removeTaskStatus == removeTaskStatus) &&
            (identical(other.addTaskStatus, addTaskStatus) ||
                other.addTaskStatus == addTaskStatus) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.selectedTask, selectedTask) ||
                other.selectedTask == selectedTask));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      dataLoadingStatus,
      removeTaskStatus,
      addTaskStatus,
      const DeepCollectionEquality().hash(_tasks),
      selectedTask);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DataLoadingStatus dataLoadingStatus,
            RemoveTaskStatus removeTaskStatus,
            AddTaskStatus addTaskStatus,
            List<TaskEntity> tasks,
            TaskEntity? selectedTask)
        initial,
  }) {
    return initial(dataLoadingStatus, removeTaskStatus, addTaskStatus, tasks,
        selectedTask);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            DataLoadingStatus dataLoadingStatus,
            RemoveTaskStatus removeTaskStatus,
            AddTaskStatus addTaskStatus,
            List<TaskEntity> tasks,
            TaskEntity? selectedTask)?
        initial,
  }) {
    return initial?.call(dataLoadingStatus, removeTaskStatus, addTaskStatus,
        tasks, selectedTask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DataLoadingStatus dataLoadingStatus,
            RemoveTaskStatus removeTaskStatus,
            AddTaskStatus addTaskStatus,
            List<TaskEntity> tasks,
            TaskEntity? selectedTask)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(dataLoadingStatus, removeTaskStatus, addTaskStatus, tasks,
          selectedTask);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TaskState {
  const factory _Initial(
      {final DataLoadingStatus dataLoadingStatus,
      final RemoveTaskStatus removeTaskStatus,
      final AddTaskStatus addTaskStatus,
      final List<TaskEntity> tasks,
      final TaskEntity? selectedTask}) = _$InitialImpl;

  @override
  DataLoadingStatus get dataLoadingStatus;
  @override
  RemoveTaskStatus get removeTaskStatus;
  @override
  AddTaskStatus get addTaskStatus;
  @override
  List<TaskEntity> get tasks;
  @override
  TaskEntity? get selectedTask;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
