import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

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
      
      appBar: AppBar(title: Text('Flutter Demo')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
      
      child: Icon(Icons.add),),
      body: Center(
        child: Switch(value: AppController.instance.darkMode, onChanged: (value)
        {AppController.instance.ChangeMode();
        })
      ),
    );
  }
}


//SetState() é uma função que é usada para atualizar o estado de um widget, ela é usada para informar ao flutter que o estado do widget foi alterado e que ele precisa ser reconstruído para refletir as mudanças,
//quando o usuário clicar no texto 'Count: $count', a função onTap é chamada, e dentro dela a função setState é chamada, e o valor da variável count é incrementado em 1, e o widget é reconstruído para refletir a mudança, ou seja, o texto 'Count: $count' é atualizado para mostrar o novo valor de count.