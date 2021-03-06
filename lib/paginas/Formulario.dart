import 'package:flutter/material.dart';
import 'package:vitality/paginas/inicio.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  GlobalKey<FormState> keyForm = new GlobalKey();
  TextEditingController  nameCtrl = new TextEditingController();
  TextEditingController  emailCtrl = new TextEditingController();
  TextEditingController  mobileCtrl = new TextEditingController();
  TextEditingController  passwordCtrl = new TextEditingController();
  TextEditingController  repeatPassCtrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[400],
          title: const Text('VITALITY', style: TextStyle(color: Colors.teal)),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(60.0),
            child: Form(
              key: keyForm,
              child: formUI(),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );

  }

  formItemsDesign(icon, item) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7),
      child: Card(child: ListTile(leading: Icon(icon), title: item)),
    );
  }

  String gender = 'mujer';

  Widget formUI() {
    return  Column(
      children: <Widget>[
        formItemsDesign(
            Icons.person,
            TextFormField(
              controller: nameCtrl,
              decoration: const InputDecoration(
                labelText: 'Nombre',
              ),
            //  validator: validateName,
            )),
        formItemsDesign(
            Icons.phone,
            TextFormField(
              controller: mobileCtrl,
              decoration: const InputDecoration(
                labelText: 'Numero de telefono',
              ),
              keyboardType: TextInputType.phone,
              maxLength: 10,
             // validator: validateMobile
        )),
        formItemsDesign(
            null,
            Column(children: <Widget>[
              Text("Genero"),
              RadioListTile<String>(
                title: const Text('Hombre'),
                value: 'hombre',
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                  //  gender = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Mujer'),
                value: 'mujer',
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                  //  gender = value;
                  });
                },
              )
            ])),
        formItemsDesign(
            Icons.email,
            TextFormField(
              controller: emailCtrl,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
              maxLength: 32,
              //validator: validateEmail,
            )),
        formItemsDesign(
            Icons.remove_red_eye,
            TextFormField(
              controller: passwordCtrl,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contrase??a',
              ),
            )),
        formItemsDesign(
            Icons.remove_red_eye,
            TextFormField(
              controller: repeatPassCtrl,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Repetir la Contrase??a',
              ),
              //validator: validatePassword,
            )),
        GestureDetector(
            onTap: (){
              save();
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp2()),
              );
            },child: Container(
              margin: const EdgeInsets.all(30.0),
              alignment: Alignment.center,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                gradient: const LinearGradient(colors: [
                  Color(0xFF0EDED2),
                  Color(0xFF03A0FE),
                ],
                begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Text("Registrar",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500)),
          padding: EdgeInsets.only(top: 16, bottom: 16),
        ))
      ],
    );
  }



  String? validatePassword(String value) {
    print("valorrr $value passsword ${passwordCtrl.text}");
    if (value != passwordCtrl.text) {
      return "Las contrase??as no coinciden";
    }
    return null;
  }

  String? validateName(String value) {
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "El nombre es necesario";
    } else if (!regExp.hasMatch(value)) {
      return "El nombre debe de ser a-z y A-Z";
    }
    return null;
  }

  String? validateMobile(String value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "El telefono es necesariod";
    } else if (value.length != 10) {
      return "El numero debe tener 10 digitos";
    }
    return null;
  }

  String? validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "El correo es necesario";
    } else if (!regExp.hasMatch(value)) {
      return "Correo invalido";
    } else {
      return null;
    }
  }

  save() {
    if (keyForm.currentState!.validate()) {
      print("Nombre ${nameCtrl.text}");
      print("Telefono ${mobileCtrl.text}");
      print("Correo ${emailCtrl.text}");
      keyForm.currentState!.reset();
    }
  }
}
