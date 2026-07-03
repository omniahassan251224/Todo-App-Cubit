import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Task_cubit.dart';
import 'states.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskCubit, TaskState>(
      builder: (context, state) {
        TaskCubit cubit = context.read<TaskCubit>();

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              "Tasks (${cubit.totalTasks})",
            ),
            actions: [
              IconButton(
                onPressed: () {
                  cubit.clearAllTasks();
                },
                icon: const Icon(Icons.delete_forever),
              ),
            ],
          ),

          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              cubit.addTask(
                "New Task ${cubit.totalTasks + 1}",
                "High",
              );
            },
          ),

          body: cubit.tasks.isEmpty
              ? const Center(
                  child: Text(
                    "No Tasks Yet",
                    style: TextStyle(fontSize: 22),
                  ),
                )
              : ListView.builder(
                  itemCount: cubit.tasks.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.all(10),
                      child: ListTile(
                        leading: Checkbox(
                          value: cubit.tasks[index].isCompleted,
                          onChanged: (_) {
                            cubit.toggleTask(index);
                          },
                        ),
                        title: Text(cubit.tasks[index].title),
                        subtitle: Text(
                          "Priority : ${cubit.tasks[index].priority}",
                        ),
                        trailing: IconButton(
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            cubit.deleteTask(index);
                          },
                        ),
                      ),
                    );
                  },
                ),
        );
      },
    );
  }
}