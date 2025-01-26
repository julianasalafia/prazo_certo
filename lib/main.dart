import 'package:flutter/material.dart';
import 'package:prazo_certo/app/core/styles/theme.dart';
import 'package:prazo_certo/app/feature/pages/home_view.dart';

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
      home: HomeView(),
    );
  }
}
