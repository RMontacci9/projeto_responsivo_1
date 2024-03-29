import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          "https://images.pexels.com/photos/6633920/pexels-photo-6633920.jpeg",
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(
          height: 4,
        ),
        Flexible(
          child: LayoutBuilder(
            builder: (_, constraints) {
              return AutoSizeText(
                "Criação de Apps Android e iOS com Flutter - Crie 16 Apps",
                minFontSize: 3,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 12, color: Colors.white),
              );
            },
          ),
        ),
        Text(
          "Roberta Montacci",
          style: TextStyle(color: Colors.grey),
        ),
        Text(
          "R\$22,90",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
        )
      ],
    );
  }
}
