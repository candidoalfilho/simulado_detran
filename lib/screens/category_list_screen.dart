import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:simulado_detran/screens/game_screen.dart';

import '../providers/dummy_questions.dart';

class CategoryListScreen extends StatelessWidget {
  static const routeName = '/category_list_screen';

  const CategoryListScreen({super.key});

  static const category_list = [
    'Todas questões',
    'Direção defensiva',
    'Legislação de trânsito',
    'Mecânica básica',
    'Medicina de tráfego',
    'Meio ambiente'
  ];

  static const subtitles = {
    'Todas questões': 'Acesse as questões de todas categorias',
    'Direção defensiva': 'Todas questões de Direção defensiva',
    'Legislação de trânsito': 'Todas questões de Legislação de trânsito',
    'Mecânica básica': 'Todas questões de Todas questões de mecânica básica',
    'Medicina de tráfego': 'Todas questões de Medicina de tráfego',
    'Meio ambiente': 'Todas questões de Meio ambiente'
  };

  static const category_icons = {
    'Todas questões': Icon(
      Icons.edit_road_rounded,
      size: 35,
    ),
    'Direção defensiva': Icon(
      Icons.person_search_outlined,
      size: 35,
    ),
    'Legislação de trânsito': Icon(
      Icons.local_police_outlined,
      size: 35,
    ),
    'Mecânica básica': Icon(
      Icons.engineering,
      size: 35,
    ),
    'Medicina de tráfego': Icon(
      Icons.medical_information,
      size: 35,
    ),
    'Meio ambiente': Icon(
      Icons.nature_people_outlined,
      size: 35,
    )
  };

  startGame(BuildContext context, String type) {
    List<dynamic> all_questions;
    if (type == "Todas questões") {
      all_questions = DUMMY_QUESTIONS
          .where((element) => element['right_answer'] != 'x')
          .toList();
    } else {
      all_questions = DUMMY_QUESTIONS
          .where((element) =>
              element['category'].toString() == type &&
              element['right_answer'] != 'x')
          .toList();
    }

    all_questions.shuffle();

    if (all_questions.length != 0) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => GameScreen(
            categoryName: type,
            questions: all_questions,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade800,
        title: Text('Simulado DETRAN', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                ...category_list.map(
                  (category) => InkWell(
                    onTap: () => startGame(context, category),
                    child: Card(
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: category_icons[category],
                          title: Text(
                            category,
                            style: TextStyle(fontSize: 20),
                          ),
                          subtitle: Text(subtitles[category]!,
                              style: TextStyle(fontSize: 17)),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
