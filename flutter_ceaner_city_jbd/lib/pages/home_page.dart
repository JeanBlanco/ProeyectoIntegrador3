import 'package:flutter/material.dart';
import 'package:flutter_ceaner_city_jbd/widgets/description_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informes de Residuos'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          DescriptionCard(
            title:
                'Tendencia de Residuos Aprovechables y No Aprovechables por año de cargue',
            description:
                'Visualiza la tendencia de residuos aprovechables y no aprovechables por año...',
            url:
                'https://app.powerbi.com/view?r=eyJrIjoiYjM1Y2QwMDUtMjZmZS00MjhhLWI4YjMtY2JiMGY0YzRjZDFhIiwidCI6IjRkZDEzM2ZkLWNhMmEtNDA5OC1hZTkxLTBlYWEwYzU4MjNiOCIsImMiOjR9&pageName=4397ce4c4781fef1fde9',
          ),
          DescriptionCard(
            title: 'Lugares de Recolección',
            description:
                'Visualiza los diferentes lugares de recolección de residuos...',
            url:
                'https://app.powerbi.com/view?r=eyJrIjoiYjM1Y2QwMDUtMjZmZS00MjhhLWI4YjMtY2JiMGY0YzRjZDFhIiwidCI6IjRkZDEzM2ZkLWNhMmEtNDA5OC1hZTkxLTBlYWEwYzU4MjNiOCIsImMiOjR9&pageName=b3eca9efaedbb465b212',
          ),
          DescriptionCard(
            title: 'Tabla Resumen de Residuos',
            description:
                'Un informe detallado con la tabla resumen de residuos...',
            url:
                'https://app.powerbi.com/view?r=eyJrIjoiYjM1Y2QwMDUtMjZmZS00MjhhLWI4YjMtY2JiMGY0YzRjZDFhIiwidCI6IjRkZDEzM2ZkLWNhMmEtNDA5OC1hZTkxLTBlYWEwYzU4MjNiOCIsImMiOjR9&pageName=2ad86a369d8d1c504615',
          ),
          DescriptionCard(
            title: 'Porcentaje de Residuos Aprovechables vs No Aprovechables',
            description:
                'Visualiza el porcentaje de residuos aprovechables y no aprovechables por año...',
            url:
                'https://app.powerbi.com/view?r=eyJrIjoiYjM1Y2QwMDUtMjZmZS00MjhhLWI4YjMtY2JiMGY0YzRjZDFhIiwidCI6IjRkZDEzM2ZkLWNhMmEtNDA5OC1hZTkxLTBlYWEwYzU4MjNiOCIsImMiOjR9',
          ),
          DescriptionCard(
            title: 'Tendencia de Residuos de Limpieza',
            description:
                'Un informe sobre la tendencia de residuos de barrido y limpieza...',
            url:
                'https://app.powerbi.com/view?r=eyJrIjoiYjM1Y2QwMDUtMjZmZS00MjhhLWI4YjMtY2JiMGY0YzRjZDFhIiwidCI6IjRkZDEzM2ZkLWNhMmEtNDA5OC1hZTkxLTBlYWEwYzU4MjNiOCIsImMiOjR9&pageName=9e4c558368ba95654174',
          ),
        ],
      ),
    );
  }
}
