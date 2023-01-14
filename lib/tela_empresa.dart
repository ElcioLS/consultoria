import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {
  @override
  _TelaEmpresaState createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Empresa'),
        backgroundColor: Colors.brown,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('images/detalhe_empresa.png'),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Sobre a empresa',
                      style: TextStyle(fontSize: 20, color: Colors.deepOrange),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'Somos uma empresa de consultoria em TI que atua em todo território nacional e também alguns paises da américa latina.'
                      'Nosso principal foco é ajudar empresas de pequeno e médio porte com faturamento entre R\$ 200.000,00 e R\$2.000.000,00 anuais a gerenciar e administrar de maneira mais eficiente seus ativos e otmizar o resultado final de maneira eficiente.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
