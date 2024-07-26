import 'package:flutter/material.dart';
import 'package:navigator_project/componentes/componenteAppBar.dart';

class TelaCadastro extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<TelaCadastro> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
  TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _validatePassword(String password) {
    if (password.length < 8) return false;
    if (!RegExp(r'[A-Za-z]').hasMatch(password)) return false;
    if (!RegExp(r'[0-9]').hasMatch(password)) return false;
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF242849), // Cor de fundo definida para hex 242849
      appBar: const ComponenteAppBar(tituloComponente: "Cadastrar Nova Conta"),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double width =
          constraints.maxWidth > 480 ? 480 : constraints.maxWidth;

          return Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: width,
                      child: TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'E-mail',
                          filled: true,
                          fillColor: Colors.white,


                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, insira um e-mail';
                          }
                          if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                            return 'Por favor, insira um e-mail válido';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: width,
                      child: TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          labelText: 'Senha',
                          filled: true,
                          fillColor: Colors.white,


                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, insira uma senha';
                          }
                          if (!_validatePassword(value)) {
                            return 'A senha deve ter ao menos 8 caracteres, incluindo letras e números';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: width,
                      child: TextFormField(
                        controller: _confirmPasswordController,
                        decoration: InputDecoration(
                          labelText: 'Confirme a Senha',
                          filled: true,
                          fillColor: Colors.white,


                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, confirme sua senha';
                          }
                          if (value != _passwordController.text) {
                            return 'As senhas não coincidem';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: width,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF03A9F4), // Cor do botão
                          padding: EdgeInsets.symmetric(vertical: 16),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Implementar cadastro
                          }
                        },
                        child: Text('Cadastrar'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}