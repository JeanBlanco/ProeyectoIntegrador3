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

  String generateHtml(String reportUrl) {
    return '''
      <!DOCTYPE html>
      <html>
        <head>
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <style>
            body, html {
              margin: 0;
              padding: 0;
              height: 100%;
              width: 100%;
              overflow: hidden;
            }
            iframe {
              width: 100%;
              height: 100%;
              border: none;
            }
          </style>
        </head>
        <body>
          <iframe title="Power BI Report" src="$reportUrl" allowfullscreen="true"></iframe>
        </body>
      </html>
    ''';
  }

  @override
  Widget build(BuildContext context) {
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
              initialData: InAppWebViewInitialData(
                data: generateHtml(reportUrl),
              ),
              initialOptions: InAppWebViewGroupOptions(
                crossPlatform: InAppWebViewOptions(
                  javaScriptEnabled: true,
                  useOnLoadResource: true,
                  cacheEnabled: true, // Asegúrate de que esté habilitado
                  mediaPlaybackRequiresUserGesture:
                      false, // Permitir reproducción automática
                ),
              ),
              onWebViewCreated: (controller) {
                // Guarda el controlador si lo necesitas
              },
              onLoadStart: (controller, url) {
                if (kDebugMode) {
                  print("Cargando el informe...");
                }
              },
              onLoadStop: (controller, url) async {
                if (kDebugMode) {
                  print("Informe cargado correctamente.");
                }
              },
              onLoadError: (controller, url, code, message) {
                if (kDebugMode) {
                  print("Error al cargar el informe: $code - $message");
                }
              },
              onLoadHttpError: (controller, url, statusCode, description) {
                if (kDebugMode) {
                  print(
                      "Error HTTP al cargar el informe: $statusCode - $description");
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
