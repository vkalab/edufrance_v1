import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:edufrance_v1/palette.dart';
class mluvnice3 extends StatefulWidget {
  const mluvnice3({Key? key}) : super(key: key);

  @override
  State<mluvnice3> createState() => _mluvnice1State();
}

class _mluvnice1State extends State<mluvnice3> {







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mluvnice lekce 3',  style: TextStyle(
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
                child: Text('Tady bude gramatika.',
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
