import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'get_builder_controller.dart';

class GetBuilderPage extends StatelessWidget {
  const GetBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetBuilderPage'),
        centerTitle: true,
      ),
      body: Center(
        child: GetBuilder<GetBuilderController>(
          builder: (controller) {
            debugPrint('########### GetBuilder Geral ###########');

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(controller.name),
                GetBuilder<GetBuilderController>(
                  id: 'name',
                  builder: (controller) {
                    debugPrint('########### GetBuilder Nome ###########');

                    return Text(controller.name);
                  },
                ),
                GetBuilder<GetBuilderController>(
                  id: 'counter',
                  builder: (controller) {
                    debugPrint('########### GetBuilder Contador ###########');

                    return Text(controller.counter.toString());
                  },
                ),
                ElevatedButton(
                  onPressed: controller.changeName,
                  child: const Text('Alterar Nome'),
                ),
                ElevatedButton(
                  onPressed: controller.increment,
                  child: const Text('Incrementar'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
