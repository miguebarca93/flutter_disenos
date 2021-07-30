import 'dart:math';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _fondo(),
          _cajaRosada(),
          _cajaBotones(),
        ],
      ),
      bottomNavigationBar: _bottomNavigattionBar(context),
    );
  }

  _fondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: FractionalOffset(0.0, 0.6),
        end: FractionalOffset(0.0, 1.0),
        colors: [
          Color.fromRGBO(52, 54, 101, 1.0),
          Color.fromRGBO(35, 37, 57, 1.0),
        ],
      )),
    );
  }

  _cajaRosada() {
    return Positioned(
      top: -100.0,
      child: Transform.rotate(
        angle: -pi / 5.0,
        child: Container(
          width: 310.0,
          height: 310.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(70.0),
              gradient: LinearGradient(
                begin: FractionalOffset(0.0, 0.6),
                end: FractionalOffset(0.0, 1.0),
                colors: [
                  Color.fromRGBO(236, 98, 188, 1.0),
                  Color.fromRGBO(241, 142, 172, 1.0),
                ],
              )),
        ),
      ),
    );
  }

  _cajaBotones() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _titulos(),
          _botonesRedondeados(),
        ],
      ),
    );
  }

  _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Classify transaction',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Classify this transaction into a partcular category',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            )
          ],
        ),
      ),
    );
  }

  _botonesRedondeados() {
    return Table(
      children: [
        TableRow(children: [
          _itemRedondeado(Colors.blue, Icons.border_all, 'General'),
          _itemRedondeado(Colors.purpleAccent, Icons.directions_bus, 'Bus')
        ]),
        TableRow(children: [
          _itemRedondeado(Colors.pinkAccent, Icons.shop, 'Buy'),
          _itemRedondeado(Colors.orange, Icons.insert_drive_file, 'File')
        ]),
        TableRow(children: [
          _itemRedondeado(
              Colors.blueAccent, Icons.movie_filter, 'Entertaiment'),
          _itemRedondeado(Colors.green, Icons.cloud, 'Grocery')
        ]),
        TableRow(children: [
          _itemRedondeado(Colors.red, Icons.collections, 'Photos'),
          _itemRedondeado(Colors.teal, Icons.help_outline, 'Help')
        ]),
      ],
    );
  }

  _itemRedondeado(Color color, IconData icon, String texto) {
    return Container(
      height: 150.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 5.0,
          ),
          CircleAvatar(
            backgroundColor: color,
            radius: 30.0,
            child: Icon(
              icon,
              color: Colors.white,
              size: 30.0,
            ),
          ),
          Text(
            texto,
            style: TextStyle(
              color: color,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
        ],
      ),
    );
  }

  _bottomNavigattionBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Color.fromRGBO(241, 142, 172, 1.0),
        textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)),
            ),
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today, size: 30.0), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.bubble_chart, size: 30.0), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle, size: 30.0), label: '')
        ],
      ),
    );
  }
}
