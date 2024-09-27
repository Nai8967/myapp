import 'package:myapp/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFCBCBCA), // Colors.lightBlue,
        body: Padding(
            padding: EdgeInsets.all(16),
            child: Form(
              key: formKey,
              child: ListView(
                children: [
                  Center(
                    child: Image.asset(
                      "assets/aula.jpeg",
                      height: 200,
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 40, horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(
                            controller: emailController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Campo e-mail obrigatório.';
                              } else if (value!.contains('@')) {
                                return null;
                              } else {
                                return 'Você precisa de um e-mail válido.';
                              }
                            },
                            cursorColor: const Color(0xFF10397B),
                            decoration: buildInputDecoration(
                              'EMAIL',
                              Icons.mail_outline_outlined,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextFormField(
                            controller: senhaController,
                            obscureText: true,
                            validator: (value) {
                              if (value!.length >= 1) {
                                return null;
                              } else {
                                return 'Você precisa de uma senha válida.';
                              }
                            },
                            cursorColor: const Color(0xFF10397B),
                            decoration: buildInputDecoration(
                              'SENHA',
                              Icons.lock_outline,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Validar os campos de e-mail e senha
                              if (formKey.currentState!.validate()) {
                                // Recuperar os dados dos TextFormFields
                                String email = emailController.text;
                                String senha = senhaController.text;

                                if (email == '@au' && senha == '2') {
                                  // Navegar p/ HomePage
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return HomePage();
                                      },
                                    ),
                                  );
                                } else {
                                  print(
                                      'Email institucional e/ou Senha incorreto(s)');
                                }
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFFF5757),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.symmetric(
                                vertical: 22,
                                horizontal: 50,
                              ),
                            ),
                            child: const Text(
                              'ENTRAR',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}

buildInputDecoration(String label, IconData iconData) {
  return InputDecoration(
    prefixIcon: Icon(iconData),
    labelText: label,
    floatingLabelStyle: const TextStyle(
      color: Color(0xFFFF5757),
    ),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Color(0xFFFF5757),
        width: 2,
      ),
    ),
  );
}
