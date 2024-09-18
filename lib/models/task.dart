class Task {
  bool isChecked;
  String title;

  Task({required this.title, this.isChecked = false});

  void toggleCheckbox() {
    isChecked = !isChecked;
  }
}
