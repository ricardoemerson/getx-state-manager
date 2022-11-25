import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstRebuildPage extends StatefulWidget {
  const FirstRebuildPage({Key? key}) : super(key: key);

  @override
  State<FirstRebuildPage> createState() => _FirstRebuildPageState();
}

class _FirstRebuildPageState extends State<FirstRebuildPage> {
  final isStudent = false.obs;
  late Worker everWorker;

  @override
  void initState() {
    super.initState();

    // isStudent.firstRebuild = false;

    everWorker = ever<bool>(
      isStudent,
      (isAluno) {
        Get.snackbar('Ever', 'É aluno $isStudent');
      },
    );
  }

  @override
  void dispose() {
    everWorker();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstRebuildPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Switch(
                value: isStudent.value,
                onChanged: (value) {},
              );
            }),
            ElevatedButton(
              onPressed: () {
                isStudent(true);
              },
              child: const Text('Ativar'),
            ),
            ElevatedButton(
              onPressed: () {
                isStudent(false);
              },
              child: const Text('Desativar'),
            ),
          ],
        ),
      ),
    );
  }
}
