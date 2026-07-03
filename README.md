# To Do App 

## Description
A simple To Do application built using Flutter and Cubit State Management.

## Features
- Add Task
- Delete Task
- Display Tasks
- Mark Task as Completed
- Clear All Tasks
- Show Total Tasks
- Task Priority


## Architecture

lib/
├── mainT.dart
├── homeT.dart
├── Task.dart
├── Task_cubit.dart
└── states.dart

## Application Flow

1. User add task.
2. TaskCubit adds the task.
3. Cubit emits a new state.
4. BlocBuilder rebuilds the UI automatically.
5. User can complete or delete tasks.

## State Management

bloc
