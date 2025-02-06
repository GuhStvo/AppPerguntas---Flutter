import 'package:flutter/material.dart';

main() => runApp(PerguntasApp());

// Criar classe principal do aap
class PerguntasApp extends StatelessWidget {

  // Método criado para a classe e POO(Programação Oarientada a Objeto)
  void responder() {
    print('Pergunta respondida!');
  }

  final List<String> perguntas = [
    // Variável que contém uma lista
    'Qual é a sua cor favorita?',
    'Qual é seu animal favorito?',
    'Qual é a sua comida favorita?',
  ];

  @override
  // Criar bloco de build
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          // Estrutura que vamos utilizar
          appBar: AppBar(
            // Widget de barra de topo
            title: Text(
              'Jogo de perguntas',
              style: TextStyle(color: Colors.white),
            ), // Título que vai ficar na barra
            backgroundColor: Colors.lightBlue[900],
          ),
          // body: Text('Olá, Mundo!'), // Teste de página
          body: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Corpo da página será gerado por uma Column() com uma lista de <Widget>
                Text(perguntas.elementAt(0)),
                Text(perguntas[1]),// Outro modo de chamar um item da lista

                ElevatedButton( // Recebe dois parametros
                  child: Text('Resposta1'), // Crio um botão que recebe outro Widget um filho, que pode ser uma coluna,linha, texto, ícone e assim sucessivamente 
                  onPressed: responder, // Parametros de clique
                ),
                ElevatedButton( 
                  child: Text('Resposta2'), 
                  onPressed: responder,
                ),
                ElevatedButton( 
                  child: Text('Resposta3'), 
                  onPressed: responder,
                ),
              ],
            ),
          )),
    );
  }
}
