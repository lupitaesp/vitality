import 'package:vitality/paginas/inicio.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';



class WebC extends StatefulWidget{
  @override
  Cliente createState()=> new Cliente();
}

class Cliente extends State<WebC>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[400],
          title: Text('Noticias', style: TextStyle(color: Colors.green)),
          centerTitle: false,
          leading: Image.asset('assets/saes2.png'),


        ),
        body: WebView(
          initialUrl: "https://www.eluniversal.com.mx/ciencia-y-salud/el-covid-19-escondido-en-tu-cepillo-de-dientes",
          javascriptMode: JavascriptMode.unrestricted,
        )
    );
  }
}