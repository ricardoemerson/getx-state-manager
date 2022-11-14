import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/student.dart';

class ObsForTypesPage extends StatelessWidget {
  final name = 'Ricardo Emerson'.obs;
  final isStudent = true.obs;
  final courseCount = 2.obs;
  final courseValue = 1196.00.obs;

  final courseList = [
    'Jornada GetX',
    'Jornada ADF',
  ].obs;

  final student = <String, dynamic>{
    'id': 12,
    'name': 'Ricardo Emerson',
    'email': 'ricardo_emerson@yahoo.com.br',
  }.obs;

  final studentModel = Student(
    id: 70,
    name: 'Ricardo Jardim',
    email: 'ricardo_emerson@hotmail.com',
    course: 'Jornada ADF Full,',
  ).obs;

  ObsForTypesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipos Reativos Genéricos'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Id do Aluno: ${student['id']}'),
              Text('Nome do Aluno: ${student['name']}'),
              Column(
                children: courseList.map(Text.new).toList(),
              ),
              ElevatedButton(
                onPressed: () {
                  student['id'] = 10;
                },
                child: const Text('Alterar ID'),
              ),
              ElevatedButton(
                onPressed: () {
                  courseList.add('Jornada Dart');
                },
                child: const Text('Adicionar Jornada'),
              ),
              ElevatedButton(
                onPressed: () {
                  courseList.assign('Jornada Dart');
                },
                child: const Text('Substituir Jornada'),
              ),
              const Divider(),
              Text('Id do Aluno (Model): ${studentModel.value.id}'),
              Text('Nome do Aluno (Model): ${studentModel.value.name}'),
              ElevatedButton(
                onPressed: () {
                  studentModel.value = studentModel.value.copyWith(id: 10);
                },
                child: const Text('Alterar ID Model'),
              ),
              ElevatedButton(
                onPressed: () {
                  studentModel(studentModel.value.copyWith(id: 22));
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
