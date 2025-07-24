import 'package:flutter/material.dart';

//rive for the buided models
//devops = test the code or software




//-------------------------------------------------------------------------------------
//state class run this following class this class can not change the ui
class NodesScreen extends StatefulWidget {
  const NodesScreen({super.key});

  @override
  State<NodesScreen> createState() => _NodesScreenState();
}

//ui will be change by state class
class _NodesScreenState extends State<NodesScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController txt = TextEditingController();
    TextEditingController diss = TextEditingController();


    //scaffold is used for make the good design
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar",style: TextStyle(color: Colors.black),),
      ),

      body:Column(
        children: [
          //add
          TextField(decoration: InputDecoration(
            hintText: "Enter Text",
            labelText: "Title",

          ),
          controller: txt,),



           //add
          TextField(decoration: InputDecoration(
            hintText: "Enter Discription",
            labelText: "Dicription",

          ),
          controller: diss,),


          // display




        ],
      ),
    );
  }
}