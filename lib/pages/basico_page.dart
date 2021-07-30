import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final _estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final _estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          _crearCampoImagen(),
          _crearCampoTexto(),
          _crearCampoIcones(),
          _crearCampoDescripcion(),
        ],
      ),
    ));
  }

  _crearCampoImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://cdn2.wanderlust.co.uk/media/1028/cropped-shutterstock_497799013.jpg?anchor=center&mode=crop&width=1200&height=0&rnd=131915974290000000'),
        fit: BoxFit.cover,
      ),
    );
  }

  _crearCampoTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Arbol chulo',
                    style: _estiloTitulo,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'Aqui nacio Thor',
                    style: _estiloSubTitulo,
                  )
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  _crearCampoIcones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _crearCampoIcono(Icons.call, 'Llamar'),
        _crearCampoIcono(Icons.near_me, 'Rutas'),
        _crearCampoIcono(Icons.share, 'Compartir'),
      ],
    );
  }

  _crearCampoIcono(IconData icon, String texto) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue))
      ],
    );
  }

  _crearCampoDescripcion() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'El concepto de paisaje se utiliza de manera diferente por varios campos de estudio, aunque todos los usos del término llevan implícita la existencia de un sujeto observador (el que visualiza) y de un objeto observado (el terreno), del que se destacan fundamentalmente sus cualidades visuales, espaciales. El paisaje, desde el punto de vista geográfico, es el objeto de estudio primordial y el documento geográfico básico a partir del cual se hace la geografía. En general, se entiende por paisaje cualquier área de la superficie terrestre producto de la interacción de los diferentes factores presentes en ella y que tienen un reflejo visual en el espacio. El paisaje geográfico es por tanto el aspecto que adquiere el espacio geográfico. El paisaje, desde el punto de vista artístico, sobre todo pictórico, es la representación gráfica de un terreno extenso. Con el mismo significado se utiliza el término país (no debe confundirse con el concepto político de país). El paisaje también puede ser el objeto material a crear o modificar por el arte mismo.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
