import 'package:flutter_bloc/flutter_bloc.dart';
import 'Task.dart';
import 'states.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitial());

  List<Task> tasks = [];

  void addTask(String title, String priority) {
    tasks.add(
      Task(
        title: title,
        createdAt: DateTime.now(),
        priority: priority,
      ),
    );

    emit(TaskUpdated());
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
    emit(TaskUpdated());
  }

  void toggleTask(int index) {
    tasks[index].isCompleted = !tasks[index].isCompleted;
    emit(TaskUpdated());
  }

  void clearAllTasks() {
    tasks.clear();
    emit(TaskUpdated());
  }

  int get totalTasks => tasks.length;
}