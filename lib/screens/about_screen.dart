import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = '/about_screen';
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade800,
        title: Text('Sobre', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Sobre o Simulado Detran',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Esse App foi desenvolvido em 2023 por Cândido Alfredo, estudante de Engenharia Civil e Sistemas de Informação. O objetivo desse App é puramente educacional e leva em conta questões reais de simulados do Detran.',
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
