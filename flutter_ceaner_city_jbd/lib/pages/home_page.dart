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
            imageUrl:
                'https://drive.google.com/uc?export=view&id=14FyUVR0RijIr5d8IrcQ_Y4vUyPqg-k-a',
          ),
          DescriptionCard(
            title: 'Lugares de Recolección',
            description:
                'Visualiza los diferentes lugares de recolección de residuos...',
            imageUrl:
                'https://drive.google.com/uc?export=view&id=1rskNW9kBC_xXf_BdQPNJDS1khmkkgMG2',
          ),
          DescriptionCard(
            title: 'Tabla Resumen de Residuos',
            description:
                'Un informe detallado con la tabla resumen de residuos...',
            imageUrl:
                'https://drive.google.com/uc?export=view&id=1xHLvmciCMzZPeZJFMsdCNt62p8uMCpx4',
          ),
          DescriptionCard(
            title: 'Porcentaje de Residuos Aprovechables vs No Aprovechables',
            description:
                'Visualiza el porcentaje de residuos aprovechables y no aprovechables por año...',
            imageUrl:
                'https://drive.google.com/uc?export=view&id=1mqzmc_wQTtTCkffuLCrU9GojEyGWodtU',
          ),
          DescriptionCard(
            title: 'Tendencia de Residuos de Limpieza',
            description:
                'Un informe sobre la tendencia de residuos de barrido y limpieza...',
            imageUrl:
                'https://drive.google.com/uc?export=view&id=17pV-c7KFXBhQAgLrpLoZ06FKyKyNZBla',
          ),
        ],
      ),
    );
  }
}
