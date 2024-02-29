import 'package:flutter/material.dart';
import 'package:projeto_responsivo_1/pages/breakpoints.dart';

import '../../course_item.dart';

class CoursesSection extends StatelessWidget {
  const CoursesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints){
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300, //conforme o quadrado tenha uma largura de 300 ele adiciona mais um item
            crossAxisSpacing: 16,
            mainAxisSpacing: 16
        ),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: constraints.maxWidth >= tabletBreakPoint ? 0 : 16),
        physics: NeverScrollableScrollPhysics(), //define nosso grid como não scrollable
        shrinkWrap: true, // encurta a altura do gridview para caber o suficiente os nossos itens
        itemCount: 20,
        itemBuilder: (context, index){
          return CourseItem();
        },
      );
    });
  }


  // SliverGridDelegateWithFixedCrossAxisCount( //especificamos aqui quantos itens queremos na horizontal
  // crossAxisCount: 3,
  // crossAxisSpacing: 4,
  // mainAxisSpacing: 4,
  // ), essa forma faz com que ele aumente o tamanho dos items para sempre manter o crossAxisCoutn como 3 (interessante usar no projeto)
}
