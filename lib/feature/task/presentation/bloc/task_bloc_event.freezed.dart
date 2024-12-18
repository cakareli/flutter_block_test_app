// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initTasks,
    required TResult Function(TaskEntity task) selectTask,
    required TResult Function() addTask,
    required TResult Function(String taskId) removeTask,
    required TResult Function(LoginStatus authStatus) authStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initTasks,
    TResult? Function(TaskEntity task)? selectTask,
    TResult? Function()? addTask,
    TResult? Function(String taskId)? removeTask,
    TResult? Function(LoginStatus authStatus)? authStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initTasks,
    TResult Function(TaskEntity task)? selectTask,
    TResult Function()? addTask,
    TResult Function(String taskId)? removeTask,
    TResult Function(LoginStatus authStatus)? authStateChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTasks value) initTasks,
    required TResult Function(SelectTask value) selectTask,
    required TResult Function(AddTask value) addTask,
    required TResult Function(RemoveTask value) removeTask,
    required TResult Function(AuthStateChanged value) authStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTasks value)? initTasks,
    TResult? Function(SelectTask value)? selectTask,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(RemoveTask value)? removeTask,
    TResult? Function(AuthStateChanged value)? authStateChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTasks value)? initTasks,
    TResult Function(SelectTask value)? selectTask,
    TResult Function(AddTask value)? addTask,
    TResult Function(RemoveTask value)? removeTask,
    TResult Function(AuthStateChanged value)? authStateChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res, TaskEvent>;
}

/// @nodoc
class _$TaskEventCopyWithImpl<$Res, $Val extends TaskEvent>
    implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitTasksImplCopyWith<$Res> {
  factory _$$InitTasksImplCopyWith(
          _$InitTasksImpl value, $Res Function(_$InitTasksImpl) then) =
      __$$InitTasksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitTasksImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$InitTasksImpl>
    implements _$$InitTasksImplCopyWith<$Res> {
  __$$InitTasksImplCopyWithImpl(
      _$InitTasksImpl _value, $Res Function(_$InitTasksImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitTasksImpl implements InitTasks {
  const _$InitTasksImpl();

  @override
  String toString() {
    return 'TaskEvent.initTasks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitTasksImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initTasks,
    required TResult Function(TaskEntity task) selectTask,
    required TResult Function() addTask,
    required TResult Function(String taskId) removeTask,
    required TResult Function(LoginStatus authStatus) authStateChanged,
  }) {
    return initTasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initTasks,
    TResult? Function(TaskEntity task)? selectTask,
    TResult? Function()? addTask,
    TResult? Function(String taskId)? removeTask,
    TResult? Function(LoginStatus authStatus)? authStateChanged,
  }) {
    return initTasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initTasks,
    TResult Function(TaskEntity task)? selectTask,
    TResult Function()? addTask,
    TResult Function(String taskId)? removeTask,
    TResult Function(LoginStatus authStatus)? authStateChanged,
    required TResult orElse(),
  }) {
    if (initTasks != null) {
      return initTasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTasks value) initTasks,
    required TResult Function(SelectTask value) selectTask,
    required TResult Function(AddTask value) addTask,
    required TResult Function(RemoveTask value) removeTask,
    required TResult Function(AuthStateChanged value) authStateChanged,
  }) {
    return initTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTasks value)? initTasks,
    TResult? Function(SelectTask value)? selectTask,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(RemoveTask value)? removeTask,
    TResult? Function(AuthStateChanged value)? authStateChanged,
  }) {
    return initTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTasks value)? initTasks,
    TResult Function(SelectTask value)? selectTask,
    TResult Function(AddTask value)? addTask,
    TResult Function(RemoveTask value)? removeTask,
    TResult Function(AuthStateChanged value)? authStateChanged,
    required TResult orElse(),
  }) {
    if (initTasks != null) {
      return initTasks(this);
    }
    return orElse();
  }
}

abstract class InitTasks implements TaskEvent {
  const factory InitTasks() = _$InitTasksImpl;
}

/// @nodoc
abstract class _$$SelectTaskImplCopyWith<$Res> {
  factory _$$SelectTaskImplCopyWith(
          _$SelectTaskImpl value, $Res Function(_$SelectTaskImpl) then) =
      __$$SelectTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskEntity task});

  $TaskEntityCopyWith<$Res> get task;
}

/// @nodoc
class __$$SelectTaskImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$SelectTaskImpl>
    implements _$$SelectTaskImplCopyWith<$Res> {
  __$$SelectTaskImplCopyWithImpl(
      _$SelectTaskImpl _value, $Res Function(_$SelectTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$SelectTaskImpl(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
    ));
  }

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskEntityCopyWith<$Res> get task {
    return $TaskEntityCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$SelectTaskImpl implements SelectTask {
  const _$SelectTaskImpl(this.task);

  @override
  final TaskEntity task;

  @override
  String toString() {
    return 'TaskEvent.selectTask(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectTaskImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectTaskImplCopyWith<_$SelectTaskImpl> get copyWith =>
      __$$SelectTaskImplCopyWithImpl<_$SelectTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initTasks,
    required TResult Function(TaskEntity task) selectTask,
    required TResult Function() addTask,
    required TResult Function(String taskId) removeTask,
    required TResult Function(LoginStatus authStatus) authStateChanged,
  }) {
    return selectTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initTasks,
    TResult? Function(TaskEntity task)? selectTask,
    TResult? Function()? addTask,
    TResult? Function(String taskId)? removeTask,
    TResult? Function(LoginStatus authStatus)? authStateChanged,
  }) {
    return selectTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initTasks,
    TResult Function(TaskEntity task)? selectTask,
    TResult Function()? addTask,
    TResult Function(String taskId)? removeTask,
    TResult Function(LoginStatus authStatus)? authStateChanged,
    required TResult orElse(),
  }) {
    if (selectTask != null) {
      return selectTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTasks value) initTasks,
    required TResult Function(SelectTask value) selectTask,
    required TResult Function(AddTask value) addTask,
    required TResult Function(RemoveTask value) removeTask,
    required TResult Function(AuthStateChanged value) authStateChanged,
  }) {
    return selectTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTasks value)? initTasks,
    TResult? Function(SelectTask value)? selectTask,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(RemoveTask value)? removeTask,
    TResult? Function(AuthStateChanged value)? authStateChanged,
  }) {
    return selectTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTasks value)? initTasks,
    TResult Function(SelectTask value)? selectTask,
    TResult Function(AddTask value)? addTask,
    TResult Function(RemoveTask value)? removeTask,
    TResult Function(AuthStateChanged value)? authStateChanged,
    required TResult orElse(),
  }) {
    if (selectTask != null) {
      return selectTask(this);
    }
    return orElse();
  }
}

abstract class SelectTask implements TaskEvent {
  const factory SelectTask(final TaskEntity task) = _$SelectTaskImpl;

  TaskEntity get task;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectTaskImplCopyWith<_$SelectTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddTaskImplCopyWith<$Res> {
  factory _$$AddTaskImplCopyWith(
          _$AddTaskImpl value, $Res Function(_$AddTaskImpl) then) =
      __$$AddTaskImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddTaskImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$AddTaskImpl>
    implements _$$AddTaskImplCopyWith<$Res> {
  __$$AddTaskImplCopyWithImpl(
      _$AddTaskImpl _value, $Res Function(_$AddTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddTaskImpl implements AddTask {
  const _$AddTaskImpl();

  @override
  String toString() {
    return 'TaskEvent.addTask()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddTaskImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initTasks,
    required TResult Function(TaskEntity task) selectTask,
    required TResult Function() addTask,
    required TResult Function(String taskId) removeTask,
    required TResult Function(LoginStatus authStatus) authStateChanged,
  }) {
    return addTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initTasks,
    TResult? Function(TaskEntity task)? selectTask,
    TResult? Function()? addTask,
    TResult? Function(String taskId)? removeTask,
    TResult? Function(LoginStatus authStatus)? authStateChanged,
  }) {
    return addTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initTasks,
    TResult Function(TaskEntity task)? selectTask,
    TResult Function()? addTask,
    TResult Function(String taskId)? removeTask,
    TResult Function(LoginStatus authStatus)? authStateChanged,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTasks value) initTasks,
    required TResult Function(SelectTask value) selectTask,
    required TResult Function(AddTask value) addTask,
    required TResult Function(RemoveTask value) removeTask,
    required TResult Function(AuthStateChanged value) authStateChanged,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTasks value)? initTasks,
    TResult? Function(SelectTask value)? selectTask,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(RemoveTask value)? removeTask,
    TResult? Function(AuthStateChanged value)? authStateChanged,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTasks value)? initTasks,
    TResult Function(SelectTask value)? selectTask,
    TResult Function(AddTask value)? addTask,
    TResult Function(RemoveTask value)? removeTask,
    TResult Function(AuthStateChanged value)? authStateChanged,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class AddTask implements TaskEvent {
  const factory AddTask() = _$AddTaskImpl;
}

/// @nodoc
abstract class _$$RemoveTaskImplCopyWith<$Res> {
  factory _$$RemoveTaskImplCopyWith(
          _$RemoveTaskImpl value, $Res Function(_$RemoveTaskImpl) then) =
      __$$RemoveTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskId});
}

/// @nodoc
class __$$RemoveTaskImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$RemoveTaskImpl>
    implements _$$RemoveTaskImplCopyWith<$Res> {
  __$$RemoveTaskImplCopyWithImpl(
      _$RemoveTaskImpl _value, $Res Function(_$RemoveTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$RemoveTaskImpl(
      null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveTaskImpl implements RemoveTask {
  const _$RemoveTaskImpl(this.taskId);

  @override
  final String taskId;

  @override
  String toString() {
    return 'TaskEvent.removeTask(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveTaskImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveTaskImplCopyWith<_$RemoveTaskImpl> get copyWith =>
      __$$RemoveTaskImplCopyWithImpl<_$RemoveTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initTasks,
    required TResult Function(TaskEntity task) selectTask,
    required TResult Function() addTask,
    required TResult Function(String taskId) removeTask,
    required TResult Function(LoginStatus authStatus) authStateChanged,
  }) {
    return removeTask(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initTasks,
    TResult? Function(TaskEntity task)? selectTask,
    TResult? Function()? addTask,
    TResult? Function(String taskId)? removeTask,
    TResult? Function(LoginStatus authStatus)? authStateChanged,
  }) {
    return removeTask?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initTasks,
    TResult Function(TaskEntity task)? selectTask,
    TResult Function()? addTask,
    TResult Function(String taskId)? removeTask,
    TResult Function(LoginStatus authStatus)? authStateChanged,
    required TResult orElse(),
  }) {
    if (removeTask != null) {
      return removeTask(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTasks value) initTasks,
    required TResult Function(SelectTask value) selectTask,
    required TResult Function(AddTask value) addTask,
    required TResult Function(RemoveTask value) removeTask,
    required TResult Function(AuthStateChanged value) authStateChanged,
  }) {
    return removeTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTasks value)? initTasks,
    TResult? Function(SelectTask value)? selectTask,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(RemoveTask value)? removeTask,
    TResult? Function(AuthStateChanged value)? authStateChanged,
  }) {
    return removeTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTasks value)? initTasks,
    TResult Function(SelectTask value)? selectTask,
    TResult Function(AddTask value)? addTask,
    TResult Function(RemoveTask value)? removeTask,
    TResult Function(AuthStateChanged value)? authStateChanged,
    required TResult orElse(),
  }) {
    if (removeTask != null) {
      return removeTask(this);
    }
    return orElse();
  }
}

abstract class RemoveTask implements TaskEvent {
  const factory RemoveTask(final String taskId) = _$RemoveTaskImpl;

  String get taskId;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveTaskImplCopyWith<_$RemoveTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateChangedImplCopyWith<$Res> {
  factory _$$AuthStateChangedImplCopyWith(_$AuthStateChangedImpl value,
          $Res Function(_$AuthStateChangedImpl) then) =
      __$$AuthStateChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginStatus authStatus});
}

/// @nodoc
class __$$AuthStateChangedImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$AuthStateChangedImpl>
    implements _$$AuthStateChangedImplCopyWith<$Res> {
  __$$AuthStateChangedImplCopyWithImpl(_$AuthStateChangedImpl _value,
      $Res Function(_$AuthStateChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authStatus = null,
  }) {
    return _then(_$AuthStateChangedImpl(
      null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as LoginStatus,
    ));
  }
}

/// @nodoc

class _$AuthStateChangedImpl implements AuthStateChanged {
  const _$AuthStateChangedImpl(this.authStatus);

  @override
  final LoginStatus authStatus;

  @override
  String toString() {
    return 'TaskEvent.authStateChanged(authStatus: $authStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateChangedImpl &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authStatus);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateChangedImplCopyWith<_$AuthStateChangedImpl> get copyWith =>
      __$$AuthStateChangedImplCopyWithImpl<_$AuthStateChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initTasks,
    required TResult Function(TaskEntity task) selectTask,
    required TResult Function() addTask,
    required TResult Function(String taskId) removeTask,
    required TResult Function(LoginStatus authStatus) authStateChanged,
  }) {
    return authStateChanged(authStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initTasks,
    TResult? Function(TaskEntity task)? selectTask,
    TResult? Function()? addTask,
    TResult? Function(String taskId)? removeTask,
    TResult? Function(LoginStatus authStatus)? authStateChanged,
  }) {
    return authStateChanged?.call(authStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initTasks,
    TResult Function(TaskEntity task)? selectTask,
    TResult Function()? addTask,
    TResult Function(String taskId)? removeTask,
    TResult Function(LoginStatus authStatus)? authStateChanged,
    required TResult orElse(),
  }) {
    if (authStateChanged != null) {
      return authStateChanged(authStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTasks value) initTasks,
    required TResult Function(SelectTask value) selectTask,
    required TResult Function(AddTask value) addTask,
    required TResult Function(RemoveTask value) removeTask,
    required TResult Function(AuthStateChanged value) authStateChanged,
  }) {
    return authStateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTasks value)? initTasks,
    TResult? Function(SelectTask value)? selectTask,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(RemoveTask value)? removeTask,
    TResult? Function(AuthStateChanged value)? authStateChanged,
  }) {
    return authStateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTasks value)? initTasks,
    TResult Function(SelectTask value)? selectTask,
    TResult Function(AddTask value)? addTask,
    TResult Function(RemoveTask value)? removeTask,
    TResult Function(AuthStateChanged value)? authStateChanged,
    required TResult orElse(),
  }) {
    if (authStateChanged != null) {
      return authStateChanged(this);
    }
    return orElse();
  }
}

abstract class AuthStateChanged implements TaskEvent {
  const factory AuthStateChanged(final LoginStatus authStatus) =
      _$AuthStateChangedImpl;

  LoginStatus get authStatus;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateChangedImplCopyWith<_$AuthStateChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
