import 'package:flutter/material.dart';
import 'package:prazo_certo/app/feature/pages/home_view.dart';
import 'package:prazo_certo/app/styles/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prazo Certo',
      theme: PCTheme.theme,
      home: const HomeView(),
    );
  }
}
