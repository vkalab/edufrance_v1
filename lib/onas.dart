
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:edufrance_v1/palette.dart';
class onas extends StatefulWidget {
  const onas({Key? key}) : super(key: key);

  @override
  State<onas> createState() => _onasState();
}

class _onasState extends State<onas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('O aplikaci',  style: TextStyle(
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

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: const [
              SizedBox(height: 50,),
              Text('Zde budou informace o naší aplikaci.', style: TextStyle(fontSize: 20), ),
            ],
          ),
        ),
      ),
    );
  }
}
