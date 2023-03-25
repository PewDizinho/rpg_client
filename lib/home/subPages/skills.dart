import 'package:rpg_client/home/subPages/skills_info.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Skills extends StatefulWidget {
  final Map info;
  const Skills(this.info, {super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  List<Widget> createList() {
    List<Widget> list = [];

    // ignore: unused_local_variable
    for (var i in widget.info['skills']) {
      list.add(InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SkillsInfo(i, widget.info['name'])),
          );
        },
        splashColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                i['nome'],
                style: TextStyle(fontSize: 15.sp, fontFamily: 'stentiga'),
              ),
              const Spacer(
                flex: 1,
              ),
              Text(
                i['tipo'],
                style: TextStyle(fontSize: 15.sp, fontFamily: 'stentiga'),
              ),
            ],
          ),
        ),
      ));
    }
    return list;
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
              'Skills',
              style: TextStyle(fontSize: 20.sp, fontFamily: 'stentiga'),
            ),
            SizedBox(
              height: 3.h,
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
                children: createList(),
              ),
            ),
            const Spacer(flex: 10),
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
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
