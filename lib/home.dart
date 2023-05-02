import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:edufrance_v1/selection.dart';
import 'package:edufrance_v1/onas.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),

            SizedBox(
              height: height,
              width: 360,
            ),

            const SizedBox(
              height: 195,
              width: 360,
              child:
              //  Text('dddd'),
              Image(image: AssetImage('assets/graphics/barevne1.png')),
            ),

            const SizedBox(
              height: 45,
            ),

            CupertinoButton.filled(
                borderRadius: BorderRadius.circular(40),
                disabledColor: Colors.black38,
               // this.padding,
                child: const Text(
                  'Začít',
                  style: TextStyle(
                      fontSize: 28,
                      //foreground:
                      fontFamily: "Font1"),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context){
                      return const selection();
                    })
                  );}
                ),
            SizedBox(
              height: height,
            ),


            CupertinoButton.filled(
                borderRadius: BorderRadius.circular(40),
                child: const Text(
                  'O aplikaci',
                  style: TextStyle(
                      fontSize: 28,
                      //foreground:
                      fontFamily: "Font1"),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context){
                        return const onas();
                      })
                  );
                }),
            SizedBox(
              height: height,
            ),
            SizedBox(
              height: height,
            ),
          ],
        ),
      ),
    ));
  }
}
