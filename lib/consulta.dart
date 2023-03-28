import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto/widgets/calendar.dart';

class MyConsulta extends StatefulWidget {
  const MyConsulta({super.key});

  @override
  State<MyConsulta> createState() => _MyConsultaState();
}

class _MyConsultaState extends State<MyConsulta> {
  TextEditingController _controlConsulta = TextEditingController();

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

          Padding(
            padding: const EdgeInsets.only(right: 50, left: 50, top: 50),
            child: TextField(
              controller: _controlConsulta,
              keyboardType: TextInputType.multiline,
              maxLines: 5,
              style: GoogleFonts.alef(
                fontSize: 18,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 155, 155, 155),
                hintText: "Descreva sua consulta.",
              ),
              maxLength: 500,
            ),
          ),
          
          SizedBox(height: 30),
          

          //////////////////// Botão
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(bottom: 30, right: 50),
            width: 80,
            child: FloatingActionButton(
              onPressed: (){},
              child: Icon(Icons.send)
            ),
          )
        ],
      ),
    );
  }
}