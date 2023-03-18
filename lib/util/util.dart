import 'dart:math';

import 'package:flutter/material.dart';

class Util {
  playDice(int dx, int? quantity, BuildContext context) {
    var result = [];
    for (var i = 0; i < (((quantity ?? 5) + 5) / 5); i++) {
      result.add(Random().nextInt(dx) + 1);
    }
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.green[600],
          title: Text("Dados"),
          content: Text(
              'Você tirou ${result.toString().replaceAll('[', '').replaceAll(']', '')}'),
          actions: <Widget>[
            // define os botões na base do dialogo
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
