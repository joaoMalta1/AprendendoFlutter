import 'package:flutter/material.dart';
import 'app.dart';

void main(List<String> args) {
  runApp(
    AppRidget(), //funcao runAPP roda o app e recebe como parametro um widget
  );
}

//windget passado como parametro para o runApp, que é a função que inicia a aplicação flutter
//o widget é a base de tudo no flutter, tudo é um widget, desde o texto, até a imagem, até o botão, tudo é um widget
//container é um widget parecido com o div do html, ele é um container que pode conter outros widgets, ele tem varias propriedades como cor, tamanho, etc
//o parametro content é o widget que vai ser exibido dentro do container, no caso o texto 'Hello, Flutter!'
// child é o parametro que recebe um widget, ele é usado para passar um widget como filho de outro widget, no caso o texto 'Hello, Flutter!' é o filho do container
// o stateless widget é um widget que não tem estado, ou seja, ele não pode ser alterado depois de ser criado, ele é imutavel, ele é usado para criar widgets que não precisam ser alterados, como o texto 'Hello, Flutter!'
