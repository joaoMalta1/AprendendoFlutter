import 'package:flutter/material.dart';
import 'app_controller.dart';
import 'home_page.dart';

class AppRidget extends StatelessWidget {
  final String title;
  const AppRidget({Key? key, this.title = 'Flutter Demo'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
      return MaterialApp(
      debugShowCheckedModeBanner: false,  
      theme: ThemeData(primarySwatch: Colors.red, 
      brightness: AppController.instance.darkMode ? Brightness.dark : Brightness.light),
      home: HomePage(),
    );
    },
    );
  }
}
//MaterialApp é um widget que é usado para criar a estrutura básica de um aplicativo flutter, ele é o widget raiz do aplicativo, ele é responsável por configurar o tema, as rotas, etc
//o parametro home é o widget que vai ser exibido quando o aplicativo for iniciado, no