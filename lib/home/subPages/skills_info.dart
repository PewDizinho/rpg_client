import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class SkillsInfo extends StatefulWidget {
  final Map skill;
  final String charName;
  const SkillsInfo(this.skill, this.charName, {super.key});

  @override
  State<SkillsInfo> createState() => _SkillsInfoState();
}

class _SkillsInfoState extends State<SkillsInfo> {
  Future<Image> _buildImage() async {
    String path =
        "assets/skills/icons/${widget.skill['nome'].replaceAll(' ', '-')}.png";
    return rootBundle.load(path).then((value) {
      return Image.memory(value.buffer.asUint8List());
    }).catchError((_) {
      return Image.asset(
        "assets/skills/icons/skill.png",
      );
    });
  }

  Image img = Image.asset(
    "assets/skills/icons/skill.png",
  );
  @override
  void initState() {
    super.initState();

    _buildImage().then((value) => {_updateState(value)});
  }

  _updateState(value) {
    setState(() {
      img = value;
    });
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
              widget.skill['nome'],
              style: TextStyle(fontSize: 20.sp, fontFamily: 'stentiga'),
            ),
            Text(
              widget.skill['tipo'] == "P" ? "Passiva" : "Ativa",
              style: TextStyle(fontSize: 17.sp, fontFamily: 'stentiga'),
            ),
            SizedBox(height: 30.h, width: 40.w, child: img),
            Text(
              'Usuário: ${widget.charName}',
              style: TextStyle(fontSize: 17.sp, fontFamily: 'DroidSans-bold'),
            ),
            SizedBox(
              height: 1.h,
            ),
            SizedBox(
              height: 30.h,
              width: 90.w,
              child: ListView(children: [
                Text(
                  'Descrição: ${widget.skill['descricao']}',
                  style:
                      TextStyle(fontSize: 17.sp, fontFamily: 'DroidSans-bold'),
                ),
              ]),
            ),
            const Spacer(flex: 3),
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
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
