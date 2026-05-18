import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    AppRidget(
      title: "agora vai",
    ), //funcao runAPP roda o app e recebe como parametro um widget
  );
}

//windget passado como parametro para o runApp, que é a função que inicia a aplicação flutter
//o widget é a base de tudo no flutter, tudo é um widget, desde o texto, até a imagem, até o botão, tudo é um widget
//container é um widget parecido com o div do html, ele é um container que pode conter outros widgets, ele tem varias propriedades como cor, tamanho, etc
//o parametro content é o widget que vai ser exibido dentro do container, no caso o texto 'Hello, Flutter!'
// child é o parametro que recebe um widget, ele é usado para passar um widget como filho de outro widget, no caso o texto 'Hello, Flutter!' é o filho do container
// o stateless widget é um widget que não tem estado, ou seja, ele não pode ser alterado depois de ser criado, ele é imutavel, ele é usado para criar widgets que não precisam ser alterados, como o texto 'Hello, Flutter!'

class AppRidget extends StatelessWidget {
  final String title;
  const AppRidget({Key? key, this.title = 'Flutter Demo'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Container(child: HomePage()),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StateHomePage();
  }
}

class StateHomePage extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
          child: Text(
            'Count: $count', //concatenação de string, o valor da variável count é convertido para string e concatenado com a string 'Count: '
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.yellow, fontSize: 30.0),
          ),
          onTap: () {
            setState(() {
              count++;
            });
          },
        ),
      ),
    );
  }
}


//SetState() é uma função que é usada para atualizar o estado de um widget, ela é usada para informar ao flutter que o estado do widget foi alterado e que ele precisa ser reconstruído para refletir as mudanças,
//quando o usuário clicar no texto 'Count: $count', a função onTap é chamada, e dentro dela a função setState é chamada, e o valor da variável count é incrementado em 1, e o widget é reconstruído para refletir a mudança, ou seja, o texto 'Count: $count' é atualizado para mostrar o novo valor de count.