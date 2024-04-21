import 'package:flutter/material.dart';
import 'package:workout_club/features/home/home_page.dart';
import 'package:workout_club/features/login/login_page.dart';
import 'package:workout_club/features/onboarding/onboarding_page.dart';
import 'package:workout_club/features/register/register_page.dart';
import 'package:workout_club/features/splash/splash_pade.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        // Configurações da barra de navegação inferior
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.black, // Fundo preto para o BottomNavigationBar
          selectedItemColor: Colors.red, // Cor vermelha para o item selecionado
          unselectedItemColor: Colors.white, // Ícones brancos para itens não selecionados
        ),
        
        // Configurações do AppBar
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black, // Fundo preto para o AppBar
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        
        // Outras configurações de estilo que você deseja personalizar
        // Por exemplo: botões, tipografia, etc.
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          bodyText2: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
          headline1: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          // Adicione outras configurações de texto conforme necessário
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.red, // Cor dos botões
          textTheme: ButtonTextTheme.primary,
        ),
        // Outros temas, por exemplo, ícones, scaffoldBackgroundColor, etc.
        iconTheme: IconThemeData(
          color: Colors.white,
        ), 
        colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: Colors.white, // Pode ser alterado para outra cor desejada
    secondary: Colors.black, // Pode ser alterado para outra cor desejada
    background: Colors.black, // Cor de fundo pode ser configurada
    surface: Colors.black, // Cor da superfície
    // Outros atributos do colorScheme podem ser configurados conforme necessário
),

      ),
    );
  }
}
