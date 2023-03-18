import 'package:flutter/material.dart';
import 'package:rpg_client/home/char_main_page.dart';
import 'package:sizer/sizer.dart';

class Informacoes extends StatelessWidget {
  final Map charInfo;
  const Informacoes(this.charInfo, {super.key});

  @override
  Widget build(BuildContext context) {
    String charName = (charInfo["name"] as String).replaceAll(" ", "-");
    String efeitos = "Efeito Atual: Nenhum";
    if (charInfo["efeitos"] != null) {
      var tempInfo = (charInfo["efeitos"] as List);
      if (tempInfo.isNotEmpty) {
        var e = "";
        for (var i = 0; i < (tempInfo.length); i++) {
          if (i + 1 == tempInfo.length) {
            e += tempInfo[i];
          } else {
            e += "${tempInfo[i]},\n";
          }
        }
        efeitos = "Efeitos atuais: $e.";
      }
    }
    return Drawer(
      child: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/Background.png"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Text(
              "Informações",
              style: TextStyle(fontSize: 20.sp, fontFamily: 'stentiga'),
            ),
            Row(
              children: [
                SizedBox(
                  width: 3.w,
                ),
                Column(children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 40.w,
                        height: 50.w,
                        child: Image.asset(
                          'assets/$charName.jpg',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ],
                  ),
                ]),
                SizedBox(
                  width: 1.w,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'Nome: ${charInfo["name"]}',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 12.sp,
                        fontFamily: 'DroidSans-bold'),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    'Idade: ${charInfo["idade"]}',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'DroidSans-bold',
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    'Vida: ${charInfo["vidaAtual"]}/${charInfo["vidaMax"]}',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'DroidSans-bold',
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    'Sanidade: ${charInfo["sanidadeAtual"]}/${charInfo["sanidadeMax"]}',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'DroidSans-bold',
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    efeitos,
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'DroidSans-bold',
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    'Gênero: ${charInfo["genero"]}',
                    style: TextStyle(
                        fontSize: 12.sp, fontFamily: 'DroidSans-bold'),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    'Perícia: ${charInfo["pericia"]}',
                    style: TextStyle(
                        fontSize: 12.sp, fontFamily: 'DroidSans-bold'),
                  ),
                ]),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Preferência de combate: ${charInfo["preferenciaDeCombate"]}',
                    style: TextStyle(
                        fontSize: 15.sp, fontFamily: 'DroidSans-bold'),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    'Player: ${charInfo["player"]}',
                    style: TextStyle(
                        fontSize: 15.sp, fontFamily: 'DroidSans-bold'),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  SizedBox(
                    height: 10.h,
                    width: 90.w,
                    child: ListView(children: [
                      Text(
                        'Aparência: ${charInfo["aparencia"]}',
                        style: TextStyle(
                            fontSize: 15.sp, fontFamily: 'DroidSans-bold'),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  SizedBox(
                    height: 30.h,
                    width: 90.w,
                    child: ListView(children: [
                      Text(
                        'História: ${charInfo["historia"]}',
                        style: TextStyle(
                            overflow: TextOverflow.fade,
                            fontSize: 15.sp,
                            fontFamily: 'DroidSans-bold'),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Center(
                    child: IconButton(
                        iconSize: 50.sp,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: 50.sp,
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
