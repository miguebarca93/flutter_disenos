import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [_pagina1(), _pagina2(context)],
      ),
    );
  }

  _pagina1() {
    return Stack(
      children: [_colorFondo(), _imagenFondo(), _contenidos()],
    );
  }

  _pagina2(BuildContext context) {
    return Stack(
      children: [
        _colorFondo(),
        _botonBienvenido(context),
      ],
    );
  }

  _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  _imagenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  _contenidos() {
    final _estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 50.0,
          ),
          Text(
            '26°',
            style: _estiloTexto,
          ),
          Text(
            'Jueves',
            style: _estiloTexto,
          ),
          Expanded(
            child: Container(),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
            size: 50.0,
          ),
          SizedBox(
            height: 50.0,
          ),
        ],
      ),
    );
  }

  _botonBienvenido(BuildContext context) {
    final _estiloTexto = TextStyle(color: Colors.white, fontSize: 20.0);
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
              child: Text(
                'Bienvenidos',
                style: _estiloTexto,
              )),
          onPressed: () {
            Navigator.pushNamed(context, 'botones');
          },
        ),
      ),
    );
  }
}
