import 'package:flutter/material.dart';
import 'package:flutter_ceaner_city_jbd/widgets/custom_button.dart';
import 'home_page.dart';
import 'chatbot_page.dart';

class WelcomePage extends StatelessWidget {
  final Function toggleTheme;
  final bool isDarkMode;

  const WelcomePage({
    super.key,
    required this.toggleTheme,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EcoResiduos'),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode),
            onPressed: () => toggleTheme(),
          ),
        ],
      ),
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Bienvenido a EcoResiduos',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Esta aplicación te ayudará a gestionar los residuos sólidos mediante análisis de datos y brindará recomendaciones para una mejor gestión.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 40),
            CustomButton(
              text: 'Ir al Chatbot',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChatbotPage()),
                );
              },
            ),
            CustomButton(
              text: 'Ver Informes',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
