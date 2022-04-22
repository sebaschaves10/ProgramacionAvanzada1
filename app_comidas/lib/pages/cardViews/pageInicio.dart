import 'package:flutter/material.dart';

class PageInicio extends StatelessWidget {
  const PageInicio({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<Color> orangeGradients = [
      Color(0xFFFF9844),
      Color(0xFFFF8853),
      Color(0xFFFF7267),
    ];

    const List<Color> purpleGradients = [
      Color(0xFF7700FF),
      Color(0xFF8351D4),
      Color(0xFF764C8A),
    ];

    const List<Color> blueGradients = [
      Color(0xFF0F13F8),
      Color(0xFF5570C7),
      Color(0xFF5E8EF7),
    ];

    return Material(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: <Widget>[
          SizedBox(
            height: 0.5,
          ),
          Container(
          child: Column(
            children: [
              Image(
                image: NetworkImage(
                  'https://img.freepik.com/vector-gratis/vector-ilustracion-dibujos-animados-conjunto-tradicional-comida-comida-rapida_1441-331.jpg?w=2000')
              ),
            ],
          )),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 600,
            width: 250,
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                gradient: LinearGradient(
                  colors: orangeGradients,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )),
            child: Container(
              padding: EdgeInsets.only(top: 50.0, bottom: 16),
              child: Text(
                'Somos una empresa familiar fundada el 31 de julio de 1988, con alto conocimiento en la producción y venta de comidas rápidas, la experiencia adquirida a través de los años, nos da el conocimiento para valorar la importancia del cliente, quien es el motivo de nuestros esfuerzos, y así llegar a ustedes con la seguridad de poder ofrecerles nuestros productos de excelente calidad con responsabilidad y cumplimiento. Contamos con excelente calidad humana que les brindara la atención apropiada, para de esta manera poder llegar a saber y entender sus gustos y necesidades. El hecho de contar con ustedes como nuestros clientes es motivo de satisfacción.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w300
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
