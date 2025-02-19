import 'package:flutter/material.dart';
 
class Resposta extends StatelessWidget {
  final String texto;
  // final VoidCallback onPressed;
  //required this.onPressed,
  final void Function() quandoSelecionado;
 
  const Resposta(this.texto, this.quandoSelecionado,
      {super.key}); //juntando as duas funções CALLBACK
 
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   width: double.infinity,
    //   margin: const EdgeInsets.all(10),
    //   child: ElevatedButton(
    //     //recebe dois parametros
    //     onPressed: onPressed,
    //     //recebe dois parametros
    //     child: Text(
    //       texto,
    //       style: TextStyle(fontSize: 28),
    //       textAlign: TextAlign.center,
    //     ), //parametros de click
    //   ),
    // );
    // o da prof
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        onPressed: quandoSelecionado,
        child: Text(texto),
      ),
    );
  }
}