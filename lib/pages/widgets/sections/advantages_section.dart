import 'package:flutter/material.dart';

class AdvantagesSection extends StatelessWidget {
  const AdvantagesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildAdvantage(String title, String subtitle){
      return Row(
        mainAxisSize: MainAxisSize.min, //a row ocupa a linha toda por padrão, com esse comando (mainAxis) definimos que ela tera um tamanho minimo
        children: [
          Icon(Icons.star, color: Colors.white, size: 50,),
          const SizedBox(width: 8,),
          Column(
            children: [
              Text(title, style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
              Text(subtitle, style: TextStyle(color: Colors.white),)
            ],
          )
        ],
      );
    }
    return Container(
        padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey))
      ),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly, //pega todo o espaço da tela e divide por igual pra todos os seus itens
        runSpacing: 16, //da o espaçamento das linhas quando há quebra
        spacing: 4, //espaçamento padrão sem quebra
        children: [
          buildAdvantage("+45.000 alunos", "Didática garantida"),
          buildAdvantage("+45.000 alunos", "Didática garantida"),
          buildAdvantage("+45.000 alunos", "Didática garantida"),
        ],
      ),
    );
  }
}
