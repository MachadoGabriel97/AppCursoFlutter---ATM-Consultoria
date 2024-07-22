import 'package:flutter/material.dart';

class TelaNovaIdeia extends StatefulWidget {
  const TelaNovaIdeia({super.key});

  @override
  State<TelaNovaIdeia> createState() => _TelaNovaIdeiaState();
}

class _TelaNovaIdeiaState extends State<TelaNovaIdeia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb_outline),
              title: Text('Nova Ideia'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('Minhas Ideias'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.note),
              title: Text('Anotações'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Nova Ideia'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Título',
                ),
                maxLength: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Descrição (Problema ou melhoria)',
                ),
                maxLength: 200,
                maxLines: 3,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Solução Proposta',
                ),
                maxLength: 200,
                maxLines: 3,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Benefícios de implementação',
                ),
                maxLength: 200,
                maxLines: 3,
              ),
              SizedBox(height: 16),
              Text(
                'Termo da LGPD:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      title: const Text('Concordo'),
                      leading: Radio(
                        value: true,
                        groupValue: true,
                        onChanged: (bool? value) {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: const Text('Discordo'),
                      leading: Radio(
                        value: false,
                        groupValue: true,
                        onChanged: (bool? value) {},
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                child: Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}