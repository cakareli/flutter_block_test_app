import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_block_test_app/feature/task/domain/entity/task_entity.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    required this.task,
    required this.isLast,
    super.key,
  });

  final TaskEntity task;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
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
                  'Task: ${task.id}',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.7,
                        child: Text(
                          task.name,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.7,
                        child: Text(
                          task.description,
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
        if (isLast) const Divider()
      ],
    );
  }
}
