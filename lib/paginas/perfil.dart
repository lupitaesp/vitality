import 'package:flutter/material.dart';


class Perfil extends StatelessWidget {

  late String name;
  late String email;
  late String movil;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Perfil"),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Stack(children: [

          ListView(
            padding: const EdgeInsets.all(8.0),
            children: [
              const SizedBox(height: 90),
              //_buildAvatar(Registrar.nombre),
              const SizedBox(height: 10.0),
              const Text(
                'Lupita' + " " 'Espinoza' + " " + 'Riveros',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 1.0),

              Container(
                height: 20,
                width: double.infinity,
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(16.0, 1.0, 16.0, 16.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20.0),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Column(
                          children: const <Widget>[
                            ListTile(
                              title: Text(
                                "Información personal",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Divider(),
                            ListTile(
                              title: Text("Phone"),
                              subtitle: Text('5579230897'),
                              leading: Icon(Icons.phone),
                            ),
                            ListTile(
                              title: Text("Email"),
                              subtitle: Text('espiinozaalupiitaa00@gmail.com'),
                              leading: Icon(Icons.email),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ]));
  }
}