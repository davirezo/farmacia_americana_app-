import 'package:flutter/material.dart';

class AttendantAdminScreen extends StatelessWidget {
  const AttendantAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Painel do Atendente')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.support_agent, size: 64),
              SizedBox(height: 16),
              Text(
                'Área administrativa do atendente',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Esqueleto inicial criado com sucesso.\n'
                'Aqui você pode adicionar fila de chats, pedidos e status.',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
