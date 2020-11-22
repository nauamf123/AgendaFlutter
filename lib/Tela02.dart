import 'package:flutter/material.dart';


class Tela02 extends StatefulWidget {

    String nome;
    String hora;
    String data;
    String telefone;
    String medico;

    Tela02(this.nome , this.hora, this.data, this.telefone, this.medico);


  @override
   _Tela02State createState() => _Tela02State();

}

class _Tela02State extends State<Tela02> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("AgendaMarcada"),
        centerTitle: true,
      ),

      body: Center(
        child: Text("Você salvou sua agenda: Nome:${widget.nome}, Hora:${widget.hora},Data:${widget.data} ,Telefone:${widget.telefone}, Médico:${widget.medico} ",
        

         ), 
        
        


      
      )
    );

    
  }

}