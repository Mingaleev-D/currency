import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'currenry_converter_cupertina_page.dart';
import 'currenry_converter_material_page.dart';

void main() {
  runApp(
    const MyAppCupertina(),
    // const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CurrencyConverterMaterialPageFulState(),
      //CurrencyConverterMaterialPage(),
    );
  }
}

class MyAppCupertina extends StatelessWidget {
  const MyAppCupertina({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CurrenryCupertinaPage(),
    );
  }
}
