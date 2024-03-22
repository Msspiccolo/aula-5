import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cadastro',
      theme: ThemeData(primaryColor: Colors.blue),
      home: CadastroScreen(),
    );
  }
}

class CadastroScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CadastroScreenState();
  }
}

class _CadastroScreenState extends State<CadastroScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Nome',
              ),
            ),
            SizedBox(height: 40),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
              labelText: 'E-mail',
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                String name = _nameController.text;
                String email = _emailController.text;
                print('Nome:$name, E-mail: $email');
              },
              child: Text('Cadastrar'),
            )
          ],
        ),
      ),
    );
  }
}
