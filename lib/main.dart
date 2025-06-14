import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hoja de Vida',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 52, 0, 0),
        ),
      ),
      home: const ResumePage(),
    );
  }
}

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hoja de Vida'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Foto de perfil
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/David.jpg'), // Cambia la ruta por tu imagen
                backgroundColor: Colors.grey[300],
              ),
            ),
            const SizedBox(height: 16),
            // Datos personales
            const Text(
              'Nombre: Ramirez David Alejandrio',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Ciudad: 1007551877'),
            const Text('Teléfono: 3214284418'),
            const Text('Correo: ramirezdavid3411@yahoo.com'),
            const Divider(height: 32),

            // Perfil profesional
            const Text(
              'Perfil Profesional',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Soy una persona responsable, con ganas de aprender y crecer profesionalmente. Me interesa el desarrollo de software y la tecnología.',
            ),
            const Divider(height: 32),

            // Experiencia
            const Text(
              'Experiencia',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              '- Practicante en Empresa X (2024)\n- Voluntario en Proyecto Y (2023)',
            ),
            const Divider(height: 32),

            // Educación
            const Text(
              'Educación',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              '- Técnico en Desarrollo de Software - SENA\n- Bachiller Académico',
            ),
          ],
        ),
      ),
    );
  }
}