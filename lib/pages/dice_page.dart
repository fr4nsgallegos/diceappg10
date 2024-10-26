import 'package:flutter/material.dart';

class DicePage extends StatelessWidget {
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
              decoration: BoxDecoration(
                color: Colors.red,
                //TRES FORMAS PARA COLOCAR BORDES CIRCULARES A MI CONTAINER
                // PRIMERA
                borderRadius: BorderRadius.circular(16),

                //SEGUNDA
                // borderRadius: BorderRadius.all(
                //   Radius.circular(16),
                // ),

                //TERCERA --- coloco el borde totalmente circular
                // shape: BoxShape.circle,
              ),
              // color: Colors.red,
              padding: EdgeInsets.all(16),
              child: Image.asset(
                "assets/images/dice1.png",
                width: 200,
                height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
