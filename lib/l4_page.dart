import 'package:flutter/material.dart';
//import 'dart:async';
import 'package:edufrance_v1/palette.dart';
class l4 extends StatefulWidget {
  const l4({Key? key}) : super(key: key);

  @override
  State<l4> createState() => _l4State();
}

class _l4State extends State<l4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lekce 4',  style: TextStyle(
            fontSize: 28,
            //foreground:
            fontFamily: "Font1"),),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 15,),
              SizedBox(
                width: 360,
                child: Text('l4',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,),),),

              SizedBox(height: 15,),



            ],
          ),
        ),
      ),
    );
  }
}
