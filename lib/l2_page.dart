import 'package:edufrance_v1/slova2.dart';
import 'package:edufrance_v1/mluvnice3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:edufrance_v1/slova2.dart';
class l2 extends StatefulWidget {
  const l2({Key? key}) : super(key: key);

  @override
  State<l2> createState() => _l2State();
}

class _l2State extends State<l2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deuxième leçon',  style: TextStyle(
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
          child:  Container(
            margin: const EdgeInsets.all(12.0),
            //padding: const EdgeInsets.only(left: 5),
            //decoration: BoxDecoration(
                //border: Border.all(color: Colors.blueAccent)
            //),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children:  [
                //SizedBox(height: 10,),
                const Text('Ma chambre', style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,

                    //foreground:
                    fontFamily: "Font1"),
                ),

                Row(children: const [
                  SizedBox(
                    width: 10,
                  ),
                   Text('Podstatná jména: Jednoduché a množné číslo  ', style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Font1"),
                  ),
                ],),
                Row(children: const [
                  SizedBox(
                    width: 10,
                  ),
                  Text('Přídavná jména: ženský rod, množné číslo, postavení ve větě, stupňování', style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Font1"),
                  ),
                ],),


                SizedBox(height: 15,),
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
                            return const slovni2();
                          })
                      );
                    }),
                const Image(image: AssetImage('graphics/l2_1.png'),),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
