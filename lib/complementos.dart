import 'package:flutter/material.dart';

class complementos extends StatefulWidget {
  const complementos({super.key});
  @override
  State<complementos> createState() => _CompleState();
}

class _CompleState extends State<complementos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFCBCBCA), //
        body: Padding(
          padding: EdgeInsets.all(16),
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
                  padding: EdgeInsets.symmetric(vertical: 40, horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      RadioListTile(
                          value: 'teste',
                          groupValue: 'tt',
                          title: Text('PURÊ DE BATATA'),
                          onChanged: (value) {}),
                      SizedBox(height: 12),
                      RadioListTile(
                          value: 'teste',
                          groupValue: 'tt',
                          title: Text('SALPICÃO'),
                          onChanged: (value) {}),
                      SizedBox(height: 12),
                      RadioListTile(
                          value: 'teste',
                          groupValue: 'tt',
                          title: Text('FAROFA'),
                          onChanged: (value) {}),
                      SizedBox(height: 12),
                      RadioListTile(
                          value: 'teste',
                          groupValue: 'tt',
                          title: Text('LEGUMES COZIDOS'),
                          onChanged: (value) {}),
                      SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('CONCLUIR'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFF5757),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 22),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [],
              ),
            ],
          ),
        ));
  }
}
