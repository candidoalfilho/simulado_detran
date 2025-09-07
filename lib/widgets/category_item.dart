import 'package:flutter/material.dart';
import 'package:simulado_detran/screens/about_screen.dart';
import 'package:simulado_detran/screens/category_list_screen.dart';
import 'package:simulado_detran/screens/simulado_screen.dart';

class CategoryItem extends StatelessWidget {
  final int id;
  final title = {
    0: 'Fazer simulado',
    1: 'Categorias',
    2: 'Sobre',
  };

  final description = {
    0: 'Prova de 40 minutos com 30 questões de provas teóricas do Detran',
    1: 'Questões para cada área de estudo da prova teórica',
    2: 'Sobre o aplicativo',
  };

  final images = {
    0: './assets/images/questoes_menu.jpg',
    1: './assets/images/simulado_menu.jpg',
    2: './assets/images/sobre_foto.jpg',
  };

  CategoryItem(this.id);

  void selectCategory(BuildContext context, int id) {
    switch (id) {
      case 0:
        Navigator.of(context).pushNamed(SimuladoScreen.routeName);
        break;
      case 1:
        Navigator.of(context).pushNamed(CategoryListScreen.routeName);
        break;
      case 2:
        print('eae');
        Navigator.of(context).pushNamed(AboutScreen.routeName);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        Orientation.portrait == MediaQuery.of(context).orientation;
    return InkWell(
        onTap: () => selectCategory(context, id),
        child: Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            child: Card(
                elevation: 10,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 200,
                        height: 150,
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              title[id]!,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              description[id]!,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          child: Image.asset(
                            images[id]!,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      )
                    ]))));
  }
}
