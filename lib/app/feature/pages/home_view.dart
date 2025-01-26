import 'package:flutter/material.dart';
import 'package:prazo_certo/app/feature/pages/category_information_view.dart';

class HomeView extends StatelessWidget {
  final categories = [
    'Bovinos',
    'Suínos',
    'Ovinos',
    'Caprinos',
    'Aves',
    'Peixes',
    'Caça e Exóticas',
    'Carnes Processadas',
  ];

  HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Prazo Certo'),
      ),
      body: ListView.separated(
        shrinkWrap: true,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CategoryInformationView(
                  category: categories[index],
                );
              }));
            },
            child: Text(
              categories[index],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 12);
        },
      ),
    );
  }
}
