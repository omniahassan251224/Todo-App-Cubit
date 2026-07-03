class Task {
  String title;
  bool isCompleted;
  DateTime createdAt;
  String priority;

  Task({
    required this.title,
    required this.createdAt,
    required this.priority,
    this.isCompleted = false,
  });
}