import 'package:flutter/material.dart';

import '../../common/constants/app_colors.dart';
import '../../common/constants/app_text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: AppTextStyles.mediumText.copyWith(
            color: AppColors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: _buildCurrentPage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Conversas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline),
            label: 'Ajuda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configurações',
          ),
        ],
        
      ),
    );
  }

  // Função para construir a tela da página atual com base no índice selecionado
  Widget _buildCurrentPage() {
    switch (_currentIndex) {
      case 0:
        return _buildHomeContent();
      case 1:
        return _buildConversationsPage();
      case 2:
        return _buildHelpPage();
      case 3:
        return _buildSettingsPage();
      default:
        return _buildHomeContent();
    }
  }

  // Função para criar o conteúdo da página inicial
  Widget _buildHomeContent() {
    return Container(
      // Adiciona um gradiente linear como fundo da tela
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: AppColors.purpleOne,
        ),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Card para Progresso do Treino
          _buildCard(
            context: context,
            title: 'Progresso do Treino',
            value: '75%',
            icon: Icons.fitness_center,
            backgroundColor: AppColors.red,
          ),
          SizedBox(height: 16), // Espaçamento entre os cartões
          // Card para Quantidade de Passos
          _buildCard(
            context: context,
            title: 'Passos',
            value: '10.000',
            icon: Icons.directions_walk,
            backgroundColor: AppColors.grey,
          ),
          SizedBox(height: 16), // Espaçamento entre os cartões
          // Card para Calorias Perdidas
          _buildCard(
            context: context,
            title: 'Calorias Perdidas',
            value: '500 kcal',
            icon: Icons.fireplace,
            backgroundColor: AppColors.grey,
          ),
          SizedBox(height: 16), // Espaçamento entre os cartões
          // Card para Monitoramento do Sono
          _buildCard(
            context: context,
            title: 'Monitoramento do Sono',
            value: '8 horas',
            icon: Icons.bedtime,
            backgroundColor: AppColors.grey,
          ),
        ],
      ),
    );
  }

  // Funções de placeholder para as outras telas (Conversas, Ajuda, Configurações)
  Widget _buildConversationsPage() {
    return Center(
      child: Text(
        'Página de Conversas',
        style: TextStyle(color: AppColors.white),
      ),
    );
  }

  Widget _buildHelpPage() {
    return Center(
      child: Text(
        'Página de Ajuda',
        style: TextStyle(color: AppColors.white),
      ),
    );
  }

  Widget _buildSettingsPage() {
    return Center(
      child: Text(
        'Página de Configurações',
        style: TextStyle(color: AppColors.white),
      ),
    );
  }

  // Função para criar os cartões com os valores e informações desejadas
  Widget _buildCard({
    required BuildContext context,
    required String title,
    required String value,
    required IconData icon,
    required Color backgroundColor,
  }) {
    return Card(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.white, size: 40),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
