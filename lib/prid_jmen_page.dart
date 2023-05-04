import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class prid_jmen extends StatefulWidget {
  const prid_jmen({Key? key}) : super(key: key);

  @override
  State<prid_jmen> createState() => _prid_jmenState();
}

class _prid_jmenState extends State<prid_jmen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Přídavná jména',  style: TextStyle(
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
                child: Text('Tady budou přídavná jména a jejich koncovky.',
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
