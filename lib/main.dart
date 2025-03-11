import 'package:flutter/material.dart';

void main() => runApp(MiExamen());

class MiExamen extends StatelessWidget {
  const MiExamen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView List Frida Apodaca 1136"),
          centerTitle: true,
          titleTextStyle:
              const TextStyle(color: Color(0xffffffff), fontSize: 20),
          backgroundColor: const Color(0xff5498e5),
        ),
        body: ListView(
          children: [
            TransportContainer(
                icon: Icons.directions_car,
                description:
                    'Este es un carro, porque es un carro. Entonces, es un carro, porque es un carro'),
            TransportContainer(
                icon: Icons.directions_bike,
                description:
                    'Esta es una bicicleta, porque es una bicicleta. Entonces, es una bicicleta porque es una bicicleta'),
            TransportContainer(
                icon: Icons.directions_boat,
                description:
                    'Este es un bote, porque es un bote. Entonces, es un bote'),
            TransportContainer(
                icon: Icons.directions_bus,
                description:
                    'Este es un bus, porque es un bus. Entonces, es un bus'),
            TransportContainer(
                icon: Icons.directions_railway,
                description:
                    'Este es un tren, porque es un tren. Entonces, es un tren'),
            TransportContainer(
                icon: Icons.directions_walk,
                description:
                    'Esto es caminar, porque es caminae. Entonces, es caminar'),
          ],
        ),
      ),
    );
  }
}

class TransportContainer extends StatelessWidget {
  final IconData icon;
  final String description;

  TransportContainer({required this.icon, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 90,
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(icon, size: 40.0, color: Color(0xff727272)),
          ),
          Expanded(
            child: Text(
              description,
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        ],
      ),
    );
  }
}
