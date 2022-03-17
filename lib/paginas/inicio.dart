import 'package:flutter/material.dart';
import 'package:vitality/paginas/perfil.dart';
import 'package:vitality/paginas/webC.dart';
import 'package:vitality/paginas/webC2.dart';
import 'package:vitality/principal.dart';

void main() => runApp(MyApp2());

class MyApp2 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (BuildContext context) => Cliente(),
          // '/show': (BuildContext context) => Container()
        }
    );
  }
}



class Cliente extends StatelessWidget {


  final Color primary = Colors.white;
  final Color active = Colors.green;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.grey[400],
          title: Text('HOME', style: TextStyle(color: Colors.grey[600])),
          centerTitle: false,
          iconTheme: new IconThemeData(color: Colors.green),
          ),
      drawer: _buildDrawer(context),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          _buildHeading("Consejos Generales"),
          _buildListItem1(context),
          _buildListItem2(context),
          //_buildListItem(Colors.transparent),
        ],
      ),
    );
  }

  Widget _buildListItem1(BuildContext context ){
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => WebC()));      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Row(
          children: <Widget>[
            Container(
              height: 150,
              width: 150,
              margin: const EdgeInsets.only(right: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(
                        'http://www.clinicasmontecarmelo.com/wp-content/uploads/2016/03/elegir-el-cepillo-de-dientes.jpg')),
                color: Colors.transparent,
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Text(
                    "El Covid-19, ¿escondido en tu cepillo de dientes?",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                      "Expertos del Colegio Oficial de Dentistas de Castellón, han incidido en la necesidad de lavarse las manos antes de manipular el cepillo, enjuagarlo y secarlo tras cada uso, guardarlo y evitar el contacto con los de otros integrantes de la unidad familiar.",
                      textAlign: TextAlign.justify),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem2(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => WebC2()));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Row(
          children: <Widget>[
            Container(
              height: 150,
              width: 150,
              margin: const EdgeInsets.only(right: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(
                        'http://www.que.es/archivos/201306/5391236w-640x640x80.jpg')),
                color: Colors.transparent,
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Text(
                    "Las hospitalizaciones por Covid se cuadruplican en solo un mes",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                      "Las cifras no son demasiado altas en términos absolutos, pero también siguen un preocupante ascenso y se han casi triplicado en los últimos 15 días.",
                      textAlign: TextAlign.justify),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  Padding _buildHeading(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }

//PARTE DE ARRIBA


  Widget _buildDrawer(BuildContext context) {
    //final String image = images[0];
    return ClipPath(
      clipper: OvalRightBorderClipper(),
      child: Drawer(
        child: Container(
          padding: const EdgeInsets.only(left: 16.0, right: 40),
          decoration: BoxDecoration(
              color: primary, boxShadow: [BoxShadow(color: Colors.black45)]),
          width: 300,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 30.0),
                  Container(
                    height: 250,
                    width: 250,
                    alignment: Alignment.center,
                    child: Image.asset('assets/fitnes.png'),
                  ),
                  SizedBox(height: 5.0),
                  //SizedBox(height: 30.0),
                  ListTile(
                    leading: Icon(Icons.home, color: active),
                    title: const Text(
                      'HOME',
                      style: TextStyle(color: Colors.green, fontSize: 15),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Perfil()));
                    },
                  ),
                  _buildDivider(),
                  ListTile(
                    leading: Icon(Icons.person_pin_circle, color: active),
                    title: const Text('Perfil',
                        style: TextStyle(color: Colors.green, fontSize: 15)),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Perfil(

                              )));
                    },
                  ),
                  _buildDivider(),
                  ListTile(
                    leading: Icon(Icons.event_note, color: active),
                    title: Text('Eventos',
                        style: TextStyle(color: Colors.green, fontSize: 15)),
                    onTap: () {
                      /*Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Perfil()));*/
                    },
                  ),
                  _buildDivider(),
                  ListTile(
                    leading: Icon(Icons.close, color: active),
                    title: Text('Cerrar Sesión',
                        style: TextStyle(color: Colors.green, fontSize: 15)),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Principal()));
                    },
                  ),
                  _buildDivider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Divider _buildDivider() {
    return Divider(
      color: active,
    );
  }
}

class OvalRightBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width - 40, 0);
    path.quadraticBezierTo(
        size.width, size.height / 4, size.width, size.height / 2);
    path.quadraticBezierTo(size.width, size.height - (size.height / 4),
        size.width - 40, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}