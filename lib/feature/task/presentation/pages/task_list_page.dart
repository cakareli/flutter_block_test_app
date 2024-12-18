import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_block_test_app/config/injection.dart';
import 'package:flutter_block_test_app/feature/login/presentation/cubit/login_cubit.dart';
import 'package:flutter_block_test_app/feature/login/presentation/pages/login_page.dart';

import 'package:flutter_block_test_app/feature/task/presentation/cubit/task_cubit.dart';
import 'package:flutter_block_test_app/feature/task/presentation/cubit/task_state.dart';
import 'package:flutter_block_test_app/feature/task/presentation/pages/task_page.dart';
import 'package:flutter_block_test_app/feature/task/presentation/widgets/task_item_widget.dart';

class TaskListPage extends StatelessWidget {
  const TaskListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final taskCubit = getIt<TaskCubit>();
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
      body: BlocProvider(
        create: (context) => taskCubit..init(),
        child: BlocBuilder<TaskCubit, TaskState>(
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
                          builder: (context) => TaskPage(taskCubit: taskCubit),
                        ),
                      );
                    },
                    child: TaskItem(
                      isLast: state.tasks[index] != state.tasks.last,
                      task: state.tasks[index],
                    ));
              },
            );
          },
        ),
      ),
    );
  }
}
