import 'package:consultoria/tela_cliente.dart';
import 'package:consultoria/tela_contato.dart';
import 'package:consultoria/tela_empresa.dart';
import 'package:consultoria/tela_servico.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _abrirEmpresa() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TelaEmpresa(),
      ),
    );
  }

  void _abrirServico() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TelaServico(),
      ),
    );
  }

  void _abrirContato() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TelaContato(),
      ),
    );
  }

  void _abrirCliente() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TelaCliente(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'ATM Consultoria',
          ),
        ),
        backgroundColor: Colors.brown,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/logo.png'),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: _abrirEmpresa,
                      child: Image.asset('images/menu_empresa.png'),
                    ),
                    GestureDetector(
                      onTap: _abrirServico,
                      child: Image.asset('images/menu_servico.png'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: _abrirCliente,
                      child: Image.asset('images/menu_cliente.png'),
                    ),
                    GestureDetector(
                      onTap: _abrirContato,
                      child: Image.asset('images/menu_contato.png'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
