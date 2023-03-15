import 'package:flutter/material.dart';
import 'package:rpg_client/home/home_page.dart';
import 'package:rpg_client/util/char_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

class CharMainPage extends StatefulWidget {
  const CharMainPage(this.charName, {super.key});
  final String charName;
  @override
  State<CharMainPage> createState() => _CharMainPageState();
}

class _CharMainPageState extends State<CharMainPage> {
  @override
  void initState() {
    super.initState();
    initInformation();
  }

  var info = {
    "name": "Carregando!",
    "idade": 0,
    "altura": 0,
    "vidaMax": 0,
    "sanidadeMax": 0,
    "genero": "",
    "aparencia": "",
    "historia": "",
    "pericia": "",
    "preferenciaDeCombate": "",
    "skills": [],
    "habilidades": {
      "Forca": 0,
      "Furtividade": 0,
      "Acrobacia": 0,
      "Adestramento": 0,
      "Atletismo": 0,
      "Atualidades": 0,
      "Ciencias": 0,
      "Diplomacia": 0,
      "Atuação": 0,
      "Iniciativa": 0,
      "Intuição": 0,
      "Luta": 0,
      "Medicina": 0,
      "Pilotagem": 0,
      "Percepcao": 0,
      "Reflexo": 0,
      "Sobrevivência": 0,
      "Tática": 0,
      "Tecnologia": 0,
      "Vontade": 0
    },
    "inventario": [],
    "avatarURL": [""]
  };

  void initInformation() async {
    setState(() async {
      info = (await CharModel(widget.charName, null).readJson());
      if (info["efeitos"] != null) {
        var tempInfo = (info["efeitos"] as List);
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
    });
  }

  String efeitos = "Efeito atual: Nenhum";
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
          children: [
            SizedBox(
              height: 5.h,
            ),
            Text(
              widget.charName,
              style: TextStyle(fontSize: 20.sp, fontFamily: 'stentiga'),
            ),
            Center(
              child: IconButton(
                iconSize: 10.sp,
                splashRadius: 1,
                onPressed: () async {
                  (await SharedPreferences.getInstance()).clear();
                  // ignore: use_build_context_synchronously
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                      ModalRoute.withName('/'));
                },
                icon: Icon(
                  Icons.delete_forever,
                  size: 10.sp,
                  color: Color.fromARGB(255, 255, 0, 0),
                  shadows: const [
                    BoxShadow(
                      blurRadius: 12.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: 5.h,
            // ),
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
                          'assets/${widget.charName}.jpg',
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
                    'Nome: ${info["name"]}',
                    style: TextStyle(
                        fontSize: 11.sp, fontFamily: 'DroidSans-bold'),
                  ),
                  Text(
                    'Idade: ${info["idade"]}',
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontFamily: 'DroidSans-bold',
                    ),
                  ),
                  Text(
                    'Vida: ${info["vidaAtual"]}/${info["vidaMax"]}',
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontFamily: 'DroidSans-bold',
                    ),
                  ),
                  Text(
                    'Sanidade: ${info["sanidadeAtual"]}/${info["sanidadeMax"]}',
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontFamily: 'DroidSans-bold',
                    ),
                  ),
                  Text(
                    efeitos,
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontFamily: 'DroidSans-bold',
                    ),
                  ),
                ]),
              ],
            ),
            Row(
              children: [
                const Spacer(flex: 2),
                Column(
                  children: [
                    _getButton(
                        context, Icons.swipe_up_rounded, "Informações", () {}),
                    SizedBox(
                      height: 5.h,
                    ),
                    _getButton(context, Icons.swipe_up_rounded, " Habilidades ",
                        () {}),
                  ],
                ),
                const Spacer(flex: 1),
                Column(
                  children: [
                    _getButton(context, Icons.swipe_up_rounded,
                        "      Skills      ", () {}),
                    SizedBox(
                      height: 5.h,
                    ),
                    _getButton(context, Icons.swipe_up_rounded,
                        "  Inventário  ", () {}),
                  ],
                ),
                const Spacer(flex: 2),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _getButton(
    BuildContext context, IconData icon, String text, Function() tap) {
  return SizedBox(
    child: Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
          bottomLeft: Radius.circular(15.0),
          bottomRight: Radius.circular(15.0),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.black,
          borderRadius: BorderRadius.circular(20),
          onTap: tap,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(icon, size: 40.sp
                    // size.aspectRatio * iconSize,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  " $text ",
                  style: TextStyle(fontSize: 20.sp),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
