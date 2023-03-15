import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rpg_client/home/char_main_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

class CharModel {
  String? name;
  String? player;
  var info;
  CharModel(this.name, this.player);

  Future readJson() async {
    if (player != null) {
      var test = jsonDecode(
          await rootBundle.loadString('assets/personagens/PlayersId.json'));
      if (test[player] != null) {
        name ??= (test[player]) as String;
      }
    }
    name?.replaceAll(" ", "-");
    final String response =
        await rootBundle.loadString('assets/personagens/$name.json');
    final data = await json.decode(response);
    info = data;
    return data;
  }

  Future<String?> checkIfPlayerAlredyChoose() async {
    final db = await SharedPreferences.getInstance();
    return db.getString("char");
  }

  Future<Widget> createButton(BuildContext context) async {
    await readJson();
    return Column(children: [
      GestureDetector(
        onTap: () async {
          final db = await SharedPreferences.getInstance();
          db.setString("char", name!);
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => CharMainPage(name!),
              ),
              ModalRoute.withName('/'));
        },
        child: SizedBox(
          width: 60.w,
          height: 70.h,
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  width: 60.w,
                  height: 70.w,
                  child: Image.asset(
                    'assets/$name.jpg',
                    fit: BoxFit.scaleDown,
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Column(children: [
                  Text('Nome: ${info["name"]}'),
                  Text('idade: ${info["idade"]}m'),
                  Text('Altura: ${info["altura"]}'),
                  Text('Perícia: ${info["pericia"]}'),
                  Text('Gênero: ${info["genero"]}'),
                  Text('Combate: ${info["preferenciaDeCombate"]}')
                ])
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
