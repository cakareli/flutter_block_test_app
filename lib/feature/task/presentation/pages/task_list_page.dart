import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_block_test_app/config/injection.dart';
import 'package:flutter_block_test_app/feature/login/presentation/cubit/login_cubit.dart';
import 'package:flutter_block_test_app/feature/login/presentation/pages/login_page.dart';
import 'package:flutter_block_test_app/feature/task/presentation/cubit/task_cubit.dart';
import 'package:flutter_block_test_app/feature/task/presentation/cubit/task_state.dart';

class TaskListPage extends StatelessWidget {
  const TaskListPage({super.key});

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
      body: BlocProvider(
        create: (context) => getIt<TaskCubit>()..init(),
        child: BlocBuilder<TaskCubit, TaskState>(
          builder: (context, state) {
            if (state.dataLoadingStatus == DataLoadingStatus.loading ||
                state.dataLoadingStatus == DataLoadingStatus.initial) {
              return const Column(
                children: [CircularProgressIndicator()],
              );
            } else if (state.dataLoadingStatus == DataLoadingStatus.failure) {
              return const Column(
                children: [Text('Error')],
              );
            }

            return ListView.builder(
              itemCount: state.tasks.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: SizedBox(
                        height: 70,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Text(
                              'Task: ${state.tasks[index].id}',
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.7,
                                    child: Text(
                                      state.tasks[index].name,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.7,
                                    child: Text(
                                      state.tasks[index].description,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    if (state.tasks[index] != state.tasks.last) const Divider()
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
