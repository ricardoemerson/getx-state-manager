import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/base_reactivity/base_reactivity_page.dart';
import 'pages/generics_reactive_type/generics_reactive_type_page.dart';
import 'pages/home/home_page.dart';
import 'pages/local_state/local_state_page.dart';
import 'pages/nullable_generics_reactive_type/nullable_generics_reactive_type_page.dart';
import 'pages/objects_update/objects_update_page.dart';
import 'pages/obs_for_types/obs_for_types_page.dart';
import 'pages/reactive_types/reactive_types_page.dart';
import 'pages/workers/ever/ever_controller.dart';
import 'pages/workers/ever/ever_page.dart';
import 'pages/workers/once/once_controller.dart';
import 'pages/workers/once/once_page.dart';
import 'pages/workers/workers_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      getPages: [
        GetPage(name: '/home', page: () => const HomePage()),
        GetPage(name: '/base-reactivity', page: () => BaseReactivityPage()),
        GetPage(name: '/reactive-types', page: () => ReactiveTypesPage()),
        GetPage(name: '/generics-reactive-types', page: () => GenericsReactiveTypePage()),
        GetPage(
          name: '/nullable-generics-reactive-type',
          page: () => NullableGenericsReactiveTypePage(),
        ),
        GetPage(name: '/obs-for-types', page: () => ObsForTypesPage()),
        GetPage(name: '/objects-update', page: () => ObjectsUpdatePage()),
        GetPage(name: '/local-state', page: () => const LocalStatePage()),
        GetPage(name: '/workers', page: () => const WorkersPage()),
        GetPage(
          name: '/workers/ever',
          binding: BindingsBuilder.put(
            () => EverController(),
          ),
          page: () => EverPage(),
        ),
        GetPage(
          name: '/workers/once',
          binding: BindingsBuilder.put(
            () => OnceController(),
          ),
          page: () => OncePage(),
        ),
      ],
    );
  }
}
