import 'package:flutter/material.dart';
import 'package:projeto_responsivo_1/pages/breakpoints.dart';
import 'package:projeto_responsivo_1/pages/custom_search_field.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final maxWidth = constraints.maxWidth;
      if (maxWidth >= tabletBreakPoint) {
        return AspectRatio(
          aspectRatio: 3.2,
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: 3.4,
                child: Image.network(
                  "https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940)",
                  fit: BoxFit
                      .cover, //expande a imagem para cobrir toda a area do aspectRadio
                ),
              ),
              Positioned(
                left: 50,
                top: 50,
                child: Card(
                    color: Colors.black,
                    elevation: 8,
                    child: Container(
                      padding: const EdgeInsets.all(22),
                      width: 450,
                      child: Column(
                        children: [
                          Text(
                            "Aprenda Flutter com este curso",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Bora aprender Flutter com o professor Daniel Ciolfi! Cursos por apenas R\$22,90. Qualidade garantida",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          CustomSearchField()
                        ],
                      ),
                    )),
              ),
            ],
          ),
        );
      }
      if (maxWidth >= mobileBreakPoint) {
        return SizedBox(
          height: 320,
          child: Stack(
            children: [
              SizedBox(
                height: 250,
                width: double.infinity,
                child: Image.network(
                  "https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940)",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 20,
                top: 20,
                child: Card(
                    color: Colors.black,
                    elevation: 8,
                    child: Container(
                      padding: const EdgeInsets.all(22),
                      width: 350,
                      child: Column(
                        children: [
                          Text(
                            "Aprenda Flutter com este curso",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Bora aprender Flutter com o professor Daniel Ciolfi! Cursos por apenas R\$22,90. Qualidade garantida",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          CustomSearchField()
                        ],
                      ),
                    )),
              )
            ],
          ),
        );
      }
      return Column(
        children: [
          AspectRatio(
            aspectRatio: 3.4,
            child: Image.network(
              "https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940)",
              fit: BoxFit.cover,
            ),
          ),
          Padding(padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Aprenda Flutter com este curso",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(height: 8,),
                Text(
                  "Bora aprender Flutter com o professor Daniel Ciolfi! Cursos por apenas R\$22,90. Qualidade garantida",
                  style: TextStyle(fontSize: 14, color: Colors.white),

                ),
                const SizedBox(height: 16,),
                CustomSearchField()
              ],
            ) ,),


        ],
      );
    });
  }
}
