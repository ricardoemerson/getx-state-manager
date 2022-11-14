import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Get.toNamed('/base-reactivity'),
              child: const Text('Básico Reatividade'),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/reactive-types'),
              child: const Text('Tipos Reativos'),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/generics-reactive-types'),
              child: const Text('Tipos Reativos Genéricos'),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/nullable-generics-reactive-type'),
              child: const Text('Tipos Reativos Genéricos Nulos'),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/obs-for-types'),
              child: const Text('Usando OBS para tipos'),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/objects-update'),
              child: const Text('Atualização de Objetos'),
            ),
          ],
        ),
      ),
    );
  }
}
