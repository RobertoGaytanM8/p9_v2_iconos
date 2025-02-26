import 'package:flutter/material.dart';

void main() => runApp(MisIconos());

class MisIconos extends StatelessWidget {
  const MisIconos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Roberto Alexis Gaytan Mendoza'),
            backgroundColor: Color(0xff5fb2ae),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Roberto Gaytan Mendoza 22308051281202",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      backgroundColor: Colors.amber,
                    )),
                // Primera fila de iconos
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconWithLabel(
                      icon: Icons.star,
                      label: 'Favorito',
                      color: Color(0xffef3bff),
                    ),
                    SizedBox(width: 20), // Espacio entre iconos
                    IconWithLabel(
                      icon: Icons.thumb_up,
                      label: 'Me gusta',
                      color: Colors.blue,
                    ),
                    SizedBox(width: 20), // Espacio entre iconos
                    IconWithLabel(
                      icon: Icons.thumb_down,
                      label: 'No me gusta',
                      color: Colors.red,
                    ),
                  ],
                ),
                SizedBox(height: 40), // Espacio entre filas
                // Segunda fila de iconos
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconWithLabel(
                      icon: Icons.home,
                      label: 'Inicio',
                      color: Colors.green,
                    ),
                    SizedBox(width: 20), // Espacio entre iconos
                    IconWithLabel(
                      icon: Icons.settings,
                      label: 'Ajustes',
                      color: Color(0xff777777),
                    ),
                    SizedBox(width: 20), // Espacio entre iconos
                    IconWithLabel(
                      icon: Icons.person,
                      label: 'Perfil',
                      color: Color(0xff18e3c8),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
} // Fin Clase MisIconos

class IconWithLabel extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const IconWithLabel({
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 50.0, color: color),
        SizedBox(height: 8), // Espacio entre el icono y el texto
        Text(label, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
