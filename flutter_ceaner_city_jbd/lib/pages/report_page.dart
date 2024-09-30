import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class ReportPage extends StatelessWidget {
  final String reportUrl;
  final String reportDescription;

  const ReportPage({
    super.key,
    required this.reportUrl,
    required this.reportDescription,
  });

  @override
  Widget build(BuildContext context) {
    // Mensaje para verificar la URL
    if (kDebugMode) {
      print("Navegando a: $reportUrl");
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Informe Power BI'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              reportDescription,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: InAppWebView(
              initialUrlRequest: URLRequest(
                url: WebUri(
                    reportUrl), // Asegúrate de que reportUrl sea un String válido
              ),
              initialOptions: InAppWebViewGroupOptions(
                crossPlatform: InAppWebViewOptions(
                  javaScriptEnabled: true, // Habilitar JavaScript
                ),
              ),
              onLoadStart: (controller, url) {
                if (kDebugMode) {
                  print("Cargando el informe...");
                }
              },
              onLoadStop: (controller, url) {
                if (kDebugMode) {
                  print("Informe cargado correctamente: $url");
                }
              },
              onLoadError: (controller, url, code, message) {
                if (kDebugMode) {
                  print("Error al cargar el informe: $code - $message");
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
