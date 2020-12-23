class TodoField {
  static const createdTime = 'CreatedTime';
}

class Todo {
  DateTime createdTime;
  String id;
  String title;
  String description;
  bool isDone;

  Todo(
      {this.createdTime,
      this.id,
      this.title,
      this.description = '',
      this.isDone = false});
}
