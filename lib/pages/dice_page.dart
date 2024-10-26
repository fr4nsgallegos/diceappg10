import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  String rutaImagen = "assets/images/dice1.png";
  int dadoN = 1;
  int n = 2;
  void cambiarADado6() {
    // rutaImagen = "assets/images/dice6.png";
    dadoN = 6;
  }

  void cambiarDadoParam(int n) {
    dadoN = n;
  }

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
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.red,
                //TRES FORMAS PARA COLOCAR BORDES CIRCULARES A MI CONTAINER
                // PRIMERA
                // borderRadius: BorderRadius.circular(16),

                //SEGUNDA
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),

                //TERCERA --- coloco el borde totalmente circular
                // shape: BoxShape.circle,
              ),
              // color: Colors.red,
              padding: EdgeInsets.all(16),
              child: Image.asset(
                "assets/images/dice$dadoN.png",
                // width: 200,
                // height: 200,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                // cambiarADado6();
                cambiarDadoParam(n);

                setState(() {});
              },
              child: Text("Cambiar a $n"),
            )
          ],
        ),
      ),
    );
  }
}
