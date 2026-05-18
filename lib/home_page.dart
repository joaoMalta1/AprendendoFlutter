import 'package:flutter/material.dart';

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
    return Scaffold(
      
      appBar: AppBar(title: Text('Flutter Demo'), backgroundColor: Colors.red),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
      child: Icon(Icons.add),),
      body: Center(
        child: GestureDetector(
          child: Text(
            'Counter: $count', //concatenação de string, o valor da variável count é convertido para string e concatenado com a string 'Count: '
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.red, fontSize: 30.0),
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