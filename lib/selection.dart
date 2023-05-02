import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:edufrance_v1/l1_page.dart';
import 'package:edufrance_v1/l2_page.dart';
import 'package:edufrance_v1/l3_page.dart';
import 'package:edufrance_v1/l4_page.dart';
import 'package:edufrance_v1/l5_page.dart';

class selection extends StatefulWidget {
  const selection({Key? key}) : super(key: key);

  @override
  State<selection> createState() => _selectionState();
}

class _selectionState extends State<selection> {
  double height = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Vyberte lekci',  style: TextStyle(
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
                showDialog(
                  context: context,
                  builder: (context) {
                    return const AlertDialog(
                        content: SizedBox(
                            height: 100, child:
                            Text("Naše aplikace je rozdělena do 5 lekcí s postupnou obtížností, které...")
                        )
                    );
                  },
                );
                },
              icon: const Icon(Icons.info_outline),
            ),
          ],
        ),

        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),

                SizedBox(
                  height: height,
                ),



                CupertinoButton.filled(
                    borderRadius: BorderRadius.circular(40),
                    child: const Text(
                      'Leçon 1 ',
                      style: TextStyle(
                          fontSize: 28,
                          //foreground:
                          fontFamily: "Font1"),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context){
                            return const l1();
                          })
                      );
                    }),
                SizedBox(
                  height: height,
                ),


                CupertinoButton.filled(
                    borderRadius: BorderRadius.circular(40),
                    child: const Text(
                      'Leçon 2',
                      style: TextStyle(
                          fontSize: 28,
                          //foreground:
                          fontFamily: "Font1"),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context){
                            return const l2();
                          })
                      );
                    }),
                SizedBox(
                  height: height,
                ),

                CupertinoButton.filled(
                    borderRadius: BorderRadius.circular(40),
                    child: const Text(
                      'Leçon 3',
                      style: TextStyle(
                          fontSize: 28,
                          //foreground:
                          fontFamily: "Font1"),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context){
                            return const l3();
                          })
                      );
                    }),
                SizedBox(
                  height: height,
                ),

                CupertinoButton.filled(
                    borderRadius: BorderRadius.circular(40),
                    child: const Text(
                      'Leçon 4',
                      style: TextStyle(
                          fontSize: 28,
                          //foreground:
                          fontFamily: "Font1"),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context){
                            return const l4();
                          })
                      );
                    }),
                SizedBox(
                  height: height,
                ),

                CupertinoButton.filled(
                    borderRadius: BorderRadius.circular(40),
                    child: const Text(
                      'Leçon 5',
                      style: TextStyle(
                          fontSize: 28,
                          //foreground:
                          fontFamily: "Font1"),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context){
                            return l5();
                          })
                      );
                    }),


              ],
            ),
          ),
        ));
  }
}
