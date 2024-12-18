import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_block_test_app/feature/task/presentation/cubit/task_cubit.dart';

import 'package:flutter_block_test_app/feature/task/presentation/cubit/task_state.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({required this.taskCubit, super.key});

  final TaskCubit taskCubit;

  /// BlocProvider.value cubit
  /// With this approach, we need taskCubit from constructor
  /// Using BlocProvider.value
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: taskCubit,
      child: BlocBuilder<TaskCubit, TaskState>(
        builder: (context, state) {
          if (state.selectedTask == null) {
            return Scaffold(
              appBar: AppBar(),
              body: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [CircularProgressIndicator()],
              ),
            );
          }
          return Scaffold(
            appBar: AppBar(
              title: Text('Task ${state.selectedTask!.id}'),
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(state.selectedTask!.name),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(state.selectedTask!.description),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  /// Directly reference cubit
  // @override
  // Widget build(BuildContext context) {
  //   return BlocBuilder<TaskCubit, TaskState>(
  //     bloc: taskCubit,
  //     builder: (context, state) {
  //       if (state.selectedTask == null) {
  //         return Scaffold(
  //           appBar: AppBar(),
  //           body: const Column(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: [CircularProgressIndicator()],
  //           ),
  //         );
  //       }
  //       return Scaffold(
  //         appBar: AppBar(
  //           title: Text('Task ${state.selectedTask!.id}'),
  //         ),
  //         body: Column(
  //           children: [
  //             Padding(
  //               padding: const EdgeInsets.all(8.0),
  //               child: Text(state.selectedTask!.name),
  //             ),
  //             Padding(
  //               padding: const EdgeInsets.all(8.0),
  //               child: Text(state.selectedTask!.description),
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }

  /// Global cubit with GetIt
  // @override
  // Widget build(BuildContext context) {
  //   return BlocBuilder<TaskCubit, TaskState>(
  //     builder: (context, state) {
  //       if (state.selectedTask == null) {
  //         return Scaffold(
  //           appBar: AppBar(),
  //           body: const Column(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: [CircularProgressIndicator()],
  //           ),
  //         );
  //       }
  //       return Scaffold(
  //         appBar: AppBar(
  //           title: Text('Task ${state.selectedTask!.id}'),
  //         ),
  //         body: Column(
  //           children: [
  //             Padding(
  //               padding: const EdgeInsets.all(8.0),
  //               child: Text(state.selectedTask!.name),
  //             ),
  //             Padding(
  //               padding: const EdgeInsets.all(8.0),
  //               child: Text(state.selectedTask!.description),
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }
}
