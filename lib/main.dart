
import 'package:flutter/material.dart';

import 'Tela02.dart';
void main(){ 
  runApp(MaterialApp(
    home: Tela01()
    
    ));
}

class Tela01 extends StatefulWidget {
    @override
  _Tela01State createState() => _Tela01State();

 


  

}



class _Tela01State extends State<Tela01>{
 TextEditingController txtnome  = TextEditingController();
 TextEditingController txthora = TextEditingController();
 TextEditingController txtdata = TextEditingController();
 TextEditingController txtmedico = TextEditingController();
 TextEditingController txttelefone = TextEditingController();



  void Salvar(){
    String nome;
    String hora;
    String data;
    String telefone;
    String medico;
    setState(() {
   
        nome = txtnome.text;
        hora = txthora.text;
        data = txtdata.text;
        telefone = txttelefone.text;
        medico = txtmedico.text;
           Navigator.push(context, MaterialPageRoute(builder: (context) => Tela02(nome, hora, data, telefone, medico)));

    });
        
  }


  @override
  Widget build(BuildContext context){
 
    var textField = TextField(
              controller: txtnome,
              decoration: InputDecoration(labelText: 'Nome'
              
              ),
              
            );
    var container = Container(
          child: Column(
          children: <Widget>[
            textField,
          


           TextField(
             controller: txthora,
              decoration: InputDecoration(labelText: 'Hora'
              
              ),
              
            ),

           TextField(
             controller: txtdata,
              decoration: InputDecoration(labelText: 'Data'
              
              ),
              
            ),


           TextField(
             controller: txttelefone,
              decoration: InputDecoration(labelText: 'Telefone'
              
              ),
              
            ),

          TextField(
            controller: txtmedico,
              decoration: InputDecoration(labelText: 'Médico'
              
              ),
              
            ),



          RaisedButton(
            child: Text("Salvar", style: TextStyle(color: Colors.white, fontSize:20),),
            color: Colors.blue,
            onPressed: Salvar

            
          ),

          
          ]
          
          )
          
        );
    return Scaffold(
      appBar: AppBar(
        title: Text("Agenda"),
        centerTitle: true,

      ),

        body:container,

    );
  }


}

class Salvar {
}