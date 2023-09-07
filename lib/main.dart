import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_project/src/models/zapato_model.dart';
import 'package:shoes_project/src/pages/zapato_desc_page.dart';
import 'package:shoes_project/src/pages/zapato_page.dart';

void main() {
  return runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ZapatoModel(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes App',
      debugShowCheckedModeBanner: false,
      home: ZapatoPage(),
    );
  }
}
