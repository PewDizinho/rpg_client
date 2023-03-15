// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:rpg_client/home/char_main_page.dart';
import 'package:rpg_client/util/char_model.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var nomes = ["rafael", "ana", "gustavo", "yasmin", "nycolle", "nathaly"];
  Widget char = Container();

  @override
  void initState() {
    super.initState();
    a();
  }

  a() async {
    var charName = await CharModel(null, null).checkIfPlayerAlredyChoose();
    if (charName != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => CharMainPage(
                  charName,
                )),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/Background.png"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                width: 50.w,
                child: TextField(
                  onEditingComplete: () {},
                  onChanged: ((value) {
                    if (nomes.contains(value.toLowerCase())) {
                      setState(() {
                        CharModel(null, value.toLowerCase())
                            .createButton()
                            .then((value) {
                          char = value;
                        });
                      });
                    } else {
                      setState(() {
                        char = Container();
                      });
                    }
                  }),
                  textCapitalization: TextCapitalization.sentences,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 0, 7, 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Nome do jogador",
                  ),
                ),
              ),
            ),
            char,
          ],
        ),
      ),
    );
  }
}
