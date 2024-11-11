import 'package:flutter/material.dart';
import 'package:flutter_ceaner_city_jbd/widgets/chatbot_bubble.dart';

class ChatbotPage extends StatefulWidget {
  const ChatbotPage({super.key});

  @override
  _ChatbotPageState createState() => _ChatbotPageState();
}

class _ChatbotPageState extends State<ChatbotPage> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, String>> _messages = [];

  // Método mejorado para enviar mensajes
  void _sendMessage(String message) {
    setState(() {
      _messages.add({"sender": "user", "text": message});
      _controller.clear();

      // Procesa el mensaje y genera una respuesta
      String response = _generateResponse(message);
      _messages.add({"sender": "bot", "text": response});
    });
  }

  // Método para generar respuestas basadas en palabras clave
  String _generateResponse(String message) {
    // Convertimos el mensaje a minúsculas para detectar palabras clave
    String lowerCaseMessage = message.toLowerCase();

    if (lowerCaseMessage.contains("reciclaje") ||
        lowerCaseMessage.contains("reciclar")) {
      return "El reciclaje es clave para la gestión de residuos. Puedes reciclar papel, plástico, vidrio y otros materiales según las normas locales.";
    } else if (lowerCaseMessage.contains("recolección") ||
        lowerCaseMessage.contains("punto limpio")) {
      return "Puedes encontrar puntos de recolección en nuestra sección de informes de residuos o consultar en el sitio web de tu ciudad.";
    } else if (lowerCaseMessage.contains("compostaje")) {
      return "El compostaje es una excelente opción para residuos orgánicos. Ayuda a reducir la cantidad de residuos que van a los vertederos.";
    } else if (lowerCaseMessage.contains("beneficios") ||
        lowerCaseMessage.contains("por qué")) {
      return "La gestión adecuada de residuos reduce la contaminación, conserva recursos y mejora la salud pública.";
    } else {
      // Respuesta general si no encuentra palabras clave
      return "Hola, soy EcoBot. Estoy aquí para ayudarte con la gestión de residuos. ¿Tienes alguna consulta específica?";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EcoBot'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                return ChatBubble(
                  isUser: message["sender"] == "user",
                  message: message["text"]!,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Escribe un mensaje...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    if (_controller.text.isNotEmpty) {
                      _sendMessage(_controller.text);
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
