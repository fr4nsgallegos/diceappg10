import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  String rutaImagen = "assets/images/dice1.png";
  int dadoN = 1;

  void shuffleDado() {
    dadoN = Random().nextInt(6) + 1;
    print(dadoN);
  }
  // int n = 1;

  // void cambiarADado6() {
  //   // print("Cambiando a dado 6");
  //   setState(() {
  //     rutaImagen = "assets/images/dice6.png";
  //   });
  // }

  // void cambiarADado() {
  //   // print("Cambiando a dado 6");
  //   dadoN = 6;
  //   setState(() {
  //     rutaImagen = "assets/images/dice6.png";
  //   });
  // }

  // void cambiarADadoN(int x) {
  //   // print("Cambiando a dado 6");
  //   dadoN = x;
  //   setState(() {
  //     rutaImagen = "assets/images/dice$dadoN.png";
  //   });
  //   n = n + 1;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black38,
      appBar: AppBar(
        title: Text("Dice Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                shuffleDado();
                setState(() {});
              },
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.red,
                  // // // Bordes circulares
                  // primera forma :
                  // borderRadius: BorderRadius.circular(16),

                  // // // Segunda forma
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),

                  //Tercera forma
                  // shape: BoxShape.circle,
                ),
                // color:Colors.red,
                padding: EdgeInsets.all(16),
                child: Image.asset(
                  // rutaImagen,
                  "assets/images/dice$dadoN.png",
                  // width: 200,
                  // height: 200,
                ),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // cambiarADadoN(n);
                shuffleDado();
                setState(() {});
              },
              // child: Text("presioname"),
              child: Text("Shuffle"),
            ),
          ],
        ),
      ),
    );
  }
}
