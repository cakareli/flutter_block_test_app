import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_block_test_app/feature/task/presentation/bloc/task_bloc.dart';
import 'package:flutter_block_test_app/feature/task/presentation/cubit/task_cubit.dart';

import 'package:flutter_block_test_app/feature/task/presentation/cubit/task_state.dart';

import '../bloc/task_bloc_state.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({
    required this.taskCubit,
    // required this.taskBloc,
    required this.index,
    super.key,
  });

  final TaskCubit taskCubit;
  // final TaskBloc taskBloc;
  final int index;

  /// BlocProvider.value cubit
  /// With this approach, we need taskCubit from constructor
  /// Using BlocProvider.value
  /// Available in child widgets
  /// Good when the Cubit is shared across multiple widgets.
  /// cubit can be used with context.read or context.watch
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
              title: Text('Task $index'),
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
  /// Only accessible to the specific BlocBuilder.
  /// Good when only one widget needs to listen to the Cubit.
  /// cubit must be passed through constructor to be used in child widgets
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

  /// Using bloc instead of cubit
  // @override
  // Widget build(BuildContext context) {
  //   return BlocProvider.value(
  //     value: taskBloc,
  //     child: BlocBuilder<TaskBloc, TaskBlocState>(
  //       builder: (context, state) {
  //         if (state.selectedTask == null) {
  //           return Scaffold(
  //             appBar: AppBar(),
  //             body: const Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [CircularProgressIndicator()],
  //             ),
  //           );
  //         }
  //         return Scaffold(
  //           appBar: AppBar(
  //             title: Text('Task $index'),
  //           ),
  //           body: Column(
  //             children: [
  //               Padding(
  //                 padding: const EdgeInsets.all(8.0),
  //                 child: Text(state.selectedTask!.name),
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.all(8.0),
  //                 child: Text(state.selectedTask!.description),
  //               ),
  //             ],
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // }
}
