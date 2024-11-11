import 'package:flutter/material.dart';

class DescriptionCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const DescriptionCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(description),
            const SizedBox(height: 16),
            Image.network(imageUrl, // Mostrando la imagen del reporte
                errorBuilder: (context, error, stackTrace) {
              return const Text(
                  'Error al cargar la imagen'); // Mensaje en caso de error
            }),
          ],
        ),
      ),
    );
  }
}
