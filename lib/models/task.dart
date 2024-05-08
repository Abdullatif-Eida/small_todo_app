class Task {
  String id;
  String name;
  bool isDone;
  DateTime createdAt;

  Task({required this.id, required this.name, this.isDone = false, required this.createdAt});

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'isDone': isDone,
        'createdAt': createdAt.toIso8601String(),
      };

  factory Task.fromJson(Map<String, dynamic> json) => Task(
        id: json['id'],
        name: json['name'],
        isDone: json['isDone'],
        createdAt: DateTime.parse(json['createdAt']),
      );
}
