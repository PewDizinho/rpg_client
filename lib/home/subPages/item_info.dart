import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ItemInfo extends StatefulWidget {
  final Map item;
  final String name;
  const ItemInfo(this.item, this.name, {super.key});

  @override
  State<ItemInfo> createState() => _ItemInfoState();
}

class _ItemInfoState extends State<ItemInfo> {
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
              widget.item["tipo"],
              style: TextStyle(fontSize: 20.sp, fontFamily: 'stentiga'),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              widget.item['short-name'],
              style: TextStyle(fontSize: 17.sp, fontFamily: 'stentiga'),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              'Usuário: ${widget.name}',
              style: TextStyle(fontSize: 17.sp, fontFamily: 'DroidSans-bold'),
            ),
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Text(
                'Tipo de Dano: ${widget.item["tipoDeDano"]}',
                style: TextStyle(fontSize: 17.sp, fontFamily: 'DroidSans-bold'),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Text(
                'Dano: ${widget.item["dano"]}',
                style: TextStyle(fontSize: 17.sp, fontFamily: 'DroidSans-bold'),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              'Peso: ${widget.item["peso"]}',
              style: TextStyle(fontSize: 17.sp, fontFamily: 'DroidSans-bold'),
            ),
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Text(
                'Aparência: ${widget.item["aparencia"]}',
                style: TextStyle(fontSize: 17.sp, fontFamily: 'DroidSans-bold'),
              ),
            ),
            SizedBox(
              height: 1.h,
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
