import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/base_reactivity/base_reactivity_page.dart';
import 'pages/first_rebuild/first_rebuild_page.dart';
import 'pages/full_life_cycle/full_life_cycle_example_controller.dart';
import 'pages/full_life_cycle/full_life_cycle_example_page.dart';
import 'pages/generics_reactive_type/generics_reactive_type_page.dart';
import 'pages/get_builder/get_builder_controller.dart';
import 'pages/get_builder/get_builder_page.dart';
import 'pages/home/home_page.dart';
import 'pages/local_state/local_state_page.dart';
import 'pages/nullable_generics_reactive_type/nullable_generics_reactive_type_page.dart';
import 'pages/objects_update/objects_update_page.dart';
import 'pages/obs_for_types/obs_for_types_page.dart';
import 'pages/reactive_types/reactive_types_page.dart';
import 'pages/workers/debounce/debounce_controller.dart';
import 'pages/workers/debounce/debounce_page.dart';
import 'pages/workers/ever/ever_controller.dart';
import 'pages/workers/ever/ever_page.dart';
import 'pages/workers/interval/interval_controller.dart';
import 'pages/workers/interval/interval_page.dart';
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
        GetPage(
          name: '/workers/interval',
          binding: BindingsBuilder.put(
            () => IntervalController(),
          ),
          page: () => IntervalPage(),
        ),
        GetPage(
          name: '/workers/debounce',
          binding: BindingsBuilder.put(
            () => DebounceController(),
          ),
          page: () => DebouncePage(),
        ),
        GetPage(
          name: '/workers/first-rebuild',
          page: () => const FirstRebuildPage(),
        ),
        GetPage(
          name: '/get-builder',
          binding: BindingsBuilder.put(
            () => GetBuilderController(),
          ),
          page: () => const GetBuilderPage(),
        ),
        GetPage(
          name: '/full-life-cycle',
          binding: BindingsBuilder.put(
            () => FullLifeCycleExampleController(),
          ),
          page: () => const FullLifeCycleExamplePage(),
        ),
      ],
    );
  }
}
