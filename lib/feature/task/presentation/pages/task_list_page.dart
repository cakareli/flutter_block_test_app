import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_block_test_app/feature/login/presentation/cubit/login_cubit.dart';
import 'package:flutter_block_test_app/feature/login/presentation/pages/login_page.dart';

import 'package:flutter_block_test_app/feature/task/presentation/cubit/task_cubit.dart';
import 'package:flutter_block_test_app/feature/task/presentation/cubit/task_state.dart';
import 'package:flutter_block_test_app/feature/task/presentation/pages/task_page.dart';
import 'package:flutter_block_test_app/feature/task/presentation/widgets/task_item_widget.dart';

class TaskListPage extends StatefulWidget {
  const TaskListPage({super.key});

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  /// Widget is stateful for manual cubit creating and close example
  /// If cubit is created manually, it should be manually
  // TaskCubit? taskCubit;
  @override
  void initState() {
    // taskCubit = getIt<TaskCubit>();
    super.initState();
  }

  @override
  void dispose() {
    // taskCubit?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task List'),
        actions: [
          TextButton(
              onPressed: () async {
                await context.read<LoginCubit>().logout();
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: const Text('Log out'))
        ],
      ),
      body: BlocBuilder<TaskCubit, TaskState>(
        builder: (context, state) {
          if (state.dataLoadingStatus == DataLoadingStatus.loading ||
              state.dataLoadingStatus == DataLoadingStatus.initial) {
            return const SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [CircularProgressIndicator()],
              ),
            );
          } else if (state.dataLoadingStatus == DataLoadingStatus.failure) {
            return const Column(
              children: [Text('Error')],
            );
          }

          return ListView.builder(
            itemCount: state.tasks.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  context.read<TaskCubit>().selectTask(state.tasks[index]);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => TaskPage(
                        taskCubit: context.read<TaskCubit>(),
                      ),
                    ),
                  );
                },
                onLongPress: () {
                  context
                      .read<TaskCubit>()
                      .removeTask(taskId: state.tasks[index].id);
                },
                child: TaskItem(
                  isLast: state.tasks[index] != state.tasks.last,
                  task: state.tasks[index],
                  index: index + 1,
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => context.read<TaskCubit>().addTask(),
      ),
    );
  }
}
