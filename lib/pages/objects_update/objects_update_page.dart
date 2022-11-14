import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/student.dart';

class ObjectsUpdatePage extends StatelessWidget {
  final student = Student(
    id: 12,
    name: 'Ricardo Emerson',
    email: 'ricardo_emerson@yahoo.com.br',
    course: 'ADF',
  ).obs;

  ObjectsUpdatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atualização de Objetos'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Id do Aluno: ${student.value.id}'),
              Text('Nome do Aluno: ${student.value.name}'),
              Text('E-mail do Aluno: ${student.value.email}'),
              ElevatedButton(
                onPressed: () {
                  student.value.name = 'Atualizando com Refresh()';
                  student.refresh();
                },
                child: const Text('Atualizando com Refresh()'),
              ),
              ElevatedButton(
                onPressed: () {
                  student.value = student.value.copyWith(name: 'Atualizando com CopyWith');
                },
                child: const Text('Atualizando com CopyWith'),
              ),
              ElevatedButton(
                onPressed: () {
                  student.update((s) {
                    s?.name = 'Atualizando com Update()';
                  });
                },
                child: const Text('Atualizando com Update'),
              ),
            ],
          );
        }),
      ),
    );
  }
}
