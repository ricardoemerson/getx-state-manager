import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalStatePage extends StatelessWidget {
  const LocalStatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LocalStatePage'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ValueBuilder<bool?>(
                initialValue: true,
                onUpdate: (p0) {
                  debugPrint('Alterado para $p0');
                },
                onDispose: () {
                  debugPrint('Removido da arvore de widget.');
                },
                builder: (obscureValue, updater) {
                  return TextFormField(
                    obscureText: obscureValue!,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          updater(!obscureValue);
                        },
                        icon: const Icon(Icons.remove_red_eye_outlined),
                      ),
                    ),
                  );
                },
              ),
              ObxValue<RxBool>(
                (obscureData) {
                  return TextFormField(
                    obscureText: obscureData.value,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          obscureData.toggle();
                        },
                        icon: const Icon(Icons.remove_red_eye_outlined),
                      ),
                    ),
                  );
                },
                true.obs,
              )
            ],
          ),
        ),
      ),
    );
  }
}
