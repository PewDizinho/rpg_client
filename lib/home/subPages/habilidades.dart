import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rpg_client/util/util.dart';
import 'package:sizer/sizer.dart';

class Habilidades extends StatefulWidget {
  final Map info;
  const Habilidades(this.info, {super.key});

  @override
  State<Habilidades> createState() => _HabilidadesState();
}

class _HabilidadesState extends State<Habilidades> {
  void rollThis(String type) {
    Util().playDice(20, (widget.info['habilidades'][type]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              "Habilidades",
              style: TextStyle(fontSize: 20.sp, fontFamily: 'stentiga'),
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              width: 85.w,
              height: 66.h,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                  ),
                  left: BorderSide(
                    color: Colors.white,
                  ),
                  right: BorderSide(
                    color: Colors.white,
                  ),
                  top: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
              child: ListView(
                children: [
                  InkWell(
                    onTap: () {
                      rollThis("Força");
                    },
                    splashColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Força",
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            widget.info["habilidades"]["Forca"].toString(),
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      rollThis("Furtividade");
                    },
                    splashColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Furtividade",
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            widget.info["habilidades"]["Furtividade"]
                                .toString(),
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //-----------------
                  InkWell(
                    onTap: () {
                      rollThis("Acrobacia");
                    },
                    splashColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Acrobacia",
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            widget.info["habilidades"]["Acrobacia"].toString(),
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      rollThis("Adestramento");
                    },
                    splashColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Adestramento",
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            widget.info["habilidades"]["Adestramento"]
                                .toString(),
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      rollThis("Atletismo");
                    },
                    splashColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Atletismo",
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            widget.info["habilidades"]["Atletismo"].toString(),
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      rollThis("Atualidades");
                    },
                    splashColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Atualidades",
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            widget.info["habilidades"]["Atualidades"]
                                .toString(),
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      rollThis("Ciencias");
                    },
                    splashColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Ciencias",
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            widget.info["habilidades"]["Ciencias"].toString(),
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      rollThis("Diplomacia");
                    },
                    splashColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Diplomacia",
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            widget.info["habilidades"]["Diplomacia"].toString(),
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      rollThis("Atuação");
                    },
                    splashColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Atuação",
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            widget.info["habilidades"]["Atuação"].toString(),
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      rollThis("Iniciativa");
                    },
                    splashColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Iniciativa",
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            widget.info["habilidades"]["Iniciativa"].toString(),
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      rollThis("Intuição");
                    },
                    splashColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Intuição",
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            widget.info["habilidades"]["Intuição"].toString(),
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      rollThis("Luta");
                    },
                    splashColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Luta",
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            widget.info["habilidades"]["Luta"].toString(),
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      rollThis("Medicina");
                    },
                    splashColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Medicina",
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            widget.info["habilidades"]["Medicina"].toString(),
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                        ],
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      rollThis("Pilotagem");
                    },
                    splashColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Pilotagem",
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            widget.info["habilidades"]["Pilotagem"].toString(),
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      rollThis("Percepcao");
                    },
                    splashColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Percepção",
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            widget.info["habilidades"]["Percepcao"].toString(),
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      rollThis("Reflexo");
                    },
                    splashColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Reflexo",
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            widget.info["habilidades"]["Reflexo"].toString(),
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      rollThis("Sobrevivência");
                    },
                    splashColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Sobrevivência",
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            widget.info["habilidades"]["Sobrevivência"]
                                .toString(),
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      rollThis("Tática");
                    },
                    splashColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Tática",
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            widget.info["habilidades"]["Tática"].toString(),
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      rollThis("Tecnologia");
                    },
                    splashColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Tecnologia",
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            widget.info["habilidades"]["Tecnologia"].toString(),
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      rollThis("Vontade");
                    },
                    splashColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Vontade",
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            widget.info["habilidades"]["Vontade"].toString(),
                            style: TextStyle(
                                fontSize: 15.sp, fontFamily: 'stentiga'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
    );
  }
}
