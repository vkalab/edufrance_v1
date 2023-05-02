import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:edufrance_v1/slova3.dart';
import 'package:edufrance_v1/mluvnice3.dart';

class l3 extends StatefulWidget {
  const l3({Key? key}) : super(key: key);

  @override
  State<l3> createState() => _l3State();
}

class _l3State extends State<l3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Troisième leçon',  style: TextStyle(
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
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('action');
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children:  [
              Container(
                margin: const EdgeInsets.all(12.0),
                child:
                  Column(
                    children: [
                      CupertinoButton.filled(
                          borderRadius: BorderRadius.circular(40),
                          child: const Text(
                            ' Slovní zásoba ',
                            style: TextStyle(
                                fontSize: 28,
                                //foreground:
                                fontFamily: "Font1"),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (BuildContext context){
                                  return const slovni3();
                                })
                            );
                          }),

                      SizedBox(height: 15,),

                      CupertinoButton.filled(
                          borderRadius: BorderRadius.circular(40),
                          child: const Text(
                            ' Gramatika ',
                            style: TextStyle(
                                fontSize: 28,
                                //foreground:
                                fontFamily: "Font1"),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (BuildContext context){
                                  return const mluvnice3();
                                })
                            );
                          }),
                    ],
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
