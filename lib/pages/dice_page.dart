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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Page"), //Título del Appbar
        centerTitle: true, //Centrar el título
        leading:
            Icon(Icons.menu), //Coloca un widget a lado izquierda del Appbar
        actions: [
          //Recibe una lista de widgets que se van a mostrar en el lado derecho del Appbar
          Tooltip(
            message: "Buscar",
            child: IconButton(
              onPressed: () {
                print("Buscar presionado");
              },
              icon: Icon(Icons.search),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
            ),
          )
        ],
        backgroundColor: Colors.blue, //Color de fondo del Appbar
        elevation: 7.0, //Controla la sombra que hay debajo del Appbar
        shadowColor: Colors.red, //Cambiar el color de la sombra generada
        titleSpacing:
            10, //Definir el espacio al rededor del título, útil para alinear de acuerdo a ciertas necesidades
        iconTheme: IconThemeData(
            color: Colors.white,
            size: 30), //Define la apariencia de los íconos en el Appbar
        actionsIconTheme: IconThemeData(
            color: Colors
                .yellow), //Especifica apariencia de los íconos de la propiedad "actions"
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
                  "assets/images/dice$dadoN.png",
                ),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                shuffleDado();
                setState(() {});
              },
              child: Text("Shuffle"),
            ),
          ],
        ),
      ),
    );
  }
}
