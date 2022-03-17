import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'paginas/Formulario.dart';
import 'package:vitality/login/login.dart';


class Principal extends StatefulWidget{
  const Principal({Key? key}) : super(key: key);

  @override
  _Principal createState()=> _Principal();
}

class _Principal extends State<Principal>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: const Text('VITALITY', style: TextStyle(color: Colors.teal)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.all(30.0)),
              const Text('Promoviendo una vida saludable ', style: TextStyle(fontSize: 23)),
              Image.asset('assets/fitnes.png'),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.keyboard_arrow_right, color:Colors.grey[600]),
                        onPressed: (){},
                      ),
                      const Text('Seleccione una opción:', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  const Divider(
                      color: Colors.black,
                      indent: 75,
                      endIndent: 75,
                      thickness: 2.0
                  ),
                ],
              ),
              //MaterialButton(
                //textColor: Colors.white,
                //color: Colors.indigo,
                //child: const Text('Iniciar Sesión'),
                //onPressed: (){
                  //Navigator.push(
                    //context,
                    //MaterialPageRoute(builder: (context) => Principal()),
                  //);
                //},
                //shape:
                //RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
             // ),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    minimumSize: const Size(double.infinity,80),
                  ),
                  icon: const FaIcon(FontAwesomeIcons.google, color: Colors.yellow),
                  label: const Text('Registrarse'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                        );
                    //final provider =
                       // Provider.of<GoogleSingInProvider>(context, listen: false);
                   // provider.googleLogin();
                  } ),
            ],
          ),
          //  ],
        ),
      ),
      //    )
    );
  }
}