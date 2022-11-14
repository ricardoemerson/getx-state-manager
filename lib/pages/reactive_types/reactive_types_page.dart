import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReactiveTypesPage extends StatelessWidget {
  final name = RxString('Ricardo Emerson');
  final isStudent = RxBool(true);
  final courseCount = RxInt(2);
  final courseValue = RxDouble(1196.00);

  final courseList = RxList([
    'Jornada GetX',
    'Jornada ADF',
  ]);

  final student = RxMap({
    'id': 12,
    'name': 'Ricardo Emerson',
    'email': 'ricardo_emerson@yahoo.com.br',
  });

  ReactiveTypesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipos Reativos'),
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
            ],
          );
        }),
      ),
    );
  }
}
