import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/student.dart';

class NullableGenericsReactiveTypePage extends StatelessWidget {
  final name = Rxn<String>('Ricardo Emerson');
  final isStudent = Rxn<bool>(true);
  final courseCount = Rxn<int>(2);
  final courseValue = Rxn<double>(1196.00);

  final courseList = Rxn<List<String>>([
    'Jornada GetX',
    'Jornada ADF',
  ]);

  final student = Rxn<Map<String, dynamic>>({
    'id': 12,
    'name': 'Ricardo Emerson',
    'email': 'ricardo_emerson@yahoo.com.br',
  });

  final studentModel = Rxn<Student>(
    Student(
      id: 70,
      name: 'Ricardo Jardim',
      email: 'ricardo_emerson@hotmail.com',
      course: 'Jornada ADF Full,',
    ),
  );

  final nullableName = RxnString();
  final nullableIsStudent = RxnBool();
  final nullableCourseCount = RxnInt();
  final nullableCourseValue = RxnDouble();

  NullableGenericsReactiveTypePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipos Reativos Genéricos Nulos'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Id do Aluno: ${student.value?['id']}'),
              Text('Nome do Aluno: ${student.value?['name']}'),
              Column(
                children: courseList.value?.map(Text.new).toList() ?? [],
              ),
              ElevatedButton(
                onPressed: () {
                  student.value?['id'] = 10;
                  student.refresh();
                },
                child: const Text('Alterar ID'),
              ),
              ElevatedButton(
                onPressed: () {
                  courseList.value?.add('Jornada Dart');
                  courseList.refresh();
                },
                child: const Text('Adicionar Jornada'),
              ),
              ElevatedButton(
                onPressed: () {
                  courseList.value?.assign('Jornada Dart');
                  courseList.refresh();
                },
                child: const Text('Substituir Jornada'),
              ),
              const Divider(),
              Text('Id do Aluno (Model): ${studentModel.value?.id}'),
              Text('Nome do Aluno (Model): ${studentModel.value?.name}'),
              ElevatedButton(
                onPressed: () {
                  studentModel.value = studentModel.value?.copyWith(id: 10);
                },
                child: const Text('Alterar ID Model'),
              ),
              ElevatedButton(
                onPressed: () {
                  studentModel(studentModel.value?.copyWith(id: 22));
                },
                child: const Text('Alterar ID Model Callable Class'),
              ),
            ],
          );
        }),
      ),
    );
  }
}
