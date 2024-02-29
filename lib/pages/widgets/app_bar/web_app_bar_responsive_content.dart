import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  const WebAppBarResponsiveContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: LayoutBuilder(builder: (context, constraints) {
      return Row(
        children: [
          Expanded(
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.all(color: Colors.grey![600]!),
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 4,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                    color: Colors.grey[500],
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Pesquise alguma coisa aqui",
                        isCollapsed: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (constraints.maxWidth >= 400) ...[
            TextButton(
              onPressed: () {},
              child: Text(
                "Aprender",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],

          if(constraints.maxWidth >=500) ...[
            TextButton(
              onPressed: () {},
              child: Text(
                "Flutter",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],

        ],
      );
    }));
  }
}
