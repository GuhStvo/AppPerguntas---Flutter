import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';
 
void main() => runApp(PerguntasApp());
 
class _PerguntaAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = [
    {
      'texto': 'Qual é a sua cor favorita?',
      'resposta': ['Preto', 'Vermelho', 'Roxo', 'Azul'],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'resposta': ['Gato', 'Morcego', 'Guaxinim', 'Quati', 'Saruê'],
    },
    {
      'texto': 'Qual é a sua comida favorita?',
      'resposta': ['Esfiha', 'Lamén', 'Panqueca de banana', 'Sorvete']
    },
  ];
  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
    //   print(_perguntaSelecionada);
  }
 
//criando um getter para saber se tem pergnta selecionada
  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }
 
  @override
  Widget build(BuildContext context) {
    //TODO: implement build
    //throw UnimplementedError();
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada]['resposta'] as List<String>
        : [];
 
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Perguntas'),
            ),
            // body: Text('Olá Mundo!')
            body: temPerguntaSelecionada
                ? Column(
                    children: <Widget>[
                      //Peguei uma lsita de string. que são as minhas respostas, usei um método MAP para converter a lista em listas de widgets dentro da arvore de componentes.
                      // Uma vez passado para column, transformei o resultado de map em uma lista, usamos os(...) para pegar cada elemento da lista e jogar dentro da lista(que são so filhos do column)
                      Questao(
                          _perguntas[_perguntaSelecionada]['texto'] as String),
                      ...respostas.map((t) => Resposta(t, _responder)).toList(),
                    ],
                  )
                : Container(
                    alignment: Alignment.center,
                    child: Text(
                      'O jogo acabou! s2 s2',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.pink[200],
                      ),
                    ),
                  )));
  }
}
 
class PerguntasApp extends StatefulWidget {
  //metodo criado para a classe e POO
  const PerguntasApp({super.key});
 
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}