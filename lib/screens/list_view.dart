import 'package:flutter/material.dart';

import 'list_edition_card.dart';
import 'list_elue_card.dart';

class ListWiew extends StatelessWidget {
  const ListWiew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(110),
        child: SafeArea(
          child: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              "EVEIL DU MANA (Edition1)",
              style: TextStyle(color: Colors.blueAccent),
            ),
            flexibleSpace: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 50, right: 15, left: 15),
                  child: Text(
                    "Texte de description sur l'edition . peut contenir environ 256 caractères . Concerne la direction de l'édition",
                    style: TextStyle(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            ListEditionCard(),
            ListElueCard(),
          ],
        ),
      ),
    );
  }
}
