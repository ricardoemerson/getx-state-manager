class Student {
  int id;
  String name;
  String email;
  String course;

  Student({
    required this.id,
    required this.name,
    required this.email,
    required this.course,
  });

  Student copyWith({
    int? id,
    String? name,
    String? email,
    String? course,
  }) {
    return Student(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      course: course ?? this.course,
    );
  }
}
