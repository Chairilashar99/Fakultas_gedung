import 'package:flutter/material.dart';
import 'package:flutter_test_fakultas/pages/fakultas_list.dart';
import 'package:get/get.dart';
import 'pages/gedung_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/fakultas-list",
      debugShowCheckedModeBanner: false,
      routes: {
        '/fakultas-list': (context) => const FakultasList(),
        '/gedung-list': (context) => GedungList(),
      },
    );
  }
}
