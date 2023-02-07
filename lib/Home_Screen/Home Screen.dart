import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int i=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$i",style: TextStyle(color: Colors.black,fontSize: 30),),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          GestureDetector(
            onTap: (){
              setState(() {
                i--;
              });
            },
            child:Center(child:Text("-x \t",style: TextStyle(fontSize: 30,color: Colors.black),),),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                i=i*2;
              });
            },
            child: Center(child: Text("\t 2x \t",style: TextStyle(fontSize: 30,color: Colors.black),),),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                i=i*3;
              });
            },
            child: Center(child: Text("\t 3x \t",style: TextStyle(fontSize: 30,color: Colors.black),),),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                i=i*4;
              });
            },
            child: Center(child: Text("\t 4x \t",style: TextStyle(fontSize: 30,color: Colors.black),),),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                i=i*5;
              });
            },
            child: Center(child: Text("\t 5x \t \t",style: TextStyle(fontSize: 30,color: Colors.black),),),
          ),

        ],
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            setState(() {
              i++;
            });
          },
          child: Container(
            width: 80,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(80),
              border: Border.all(color: Colors.black),
            ),
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
