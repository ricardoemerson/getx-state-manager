import 'package:flutter/material.dart';

class FullLifeCycleExamplePage extends StatelessWidget {
  const FullLifeCycleExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FullLifeCyclePage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FullLifeCyclePage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
