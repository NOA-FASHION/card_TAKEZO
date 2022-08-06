import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListEditionCard extends StatelessWidget {
  const ListEditionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            "Les élues de Eveil du mana",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent),
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            key: Key(UniqueKey().toString()),
            itemCount: 4,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10, left: 10, top: 5),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    subtitle: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child: Image.asset(
                              "assets/Chasseuse_de_monstre.jpeg",
                              width: 51,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 300,
                          child: Column(
                            children: [
                              //////////////////////row1
                              Row(
                                children: [
                                  SvgPicture.asset("assets/gavel.svg",
                                      width: 35, semanticsLabel: 'Acme Logo'),
                                  const Text(
                                    "Eloise",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 170,
                                  ),
                                ],
                              ),
                              //////////////////////row2
                              Row(
                                children: [
                                  const Text(
                                    "Recrue-Elue",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10),
                                  ),
                                  const SizedBox(
                                    width: 110,
                                  ),
                                  SvgPicture.asset(
                                    "assets/hearts_1.svg",
                                    width: 15,
                                  ),
                                  const Text(
                                    "2",
                                    style: TextStyle(fontSize: 9),
                                  ),
                                  SvgPicture.asset(
                                    "assets/pointy-sword.svg",
                                    width: 15,
                                  ),
                                  const Text(
                                    "10",
                                    style: TextStyle(fontSize: 9),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Si éloise inflige des bléssures lorsqu'elle attaque au contact vous pouvez réactivez 2 mines",
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ],
    );
  }
}
