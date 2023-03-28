import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto/consulta.dart';
import 'package:projeto/widgets/calendar.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
  
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ///////////// Container para imagem
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Image(
              image: AssetImage("logotipo.jpg"),
            ),
          ),
          
          SizedBox(
            height: 30,
          ),

      //////////////////////////////////// Título e subtítulo
          Text(
            "Seja bem vindo",
            textAlign: TextAlign.center,
            style: GoogleFonts.play(
              fontSize: 50,
            ),
          ),

          Text(
            "Marque a sua consulta",
            textAlign: TextAlign.center,
            style: GoogleFonts.alef(
              fontSize: 25,
            ),
          ),
          
          SizedBox(height: 30),
          
          //////////////////// Container para o calendário
          Container(
            padding: EdgeInsets.only(right: 50, left: 50),
            height: 400,
            child: MyCalendar(),
          ),

          //////////////////// Botão
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(bottom: 30, right: 50),
            width: 80,
            child: FloatingActionButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyConsulta()));
              },
              child: Icon(Icons.arrow_forward)
            ),
          )
        ],
      ),
    );
  }
}