import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class slovni2 extends StatefulWidget {
  const slovni2({Key? key}) : super(key: key);

  @override
  State<slovni2> createState() => _slovni2State();
}

class _slovni2State extends State<slovni2> {
  List<String> tabulka1Fj = ["une chambre", "un lit", "un bureau", "un ordinateur", "une table", "une chaise", "une fenetre", "une commode", "une armoire", "un tapis", "lune table de nuit", "une lampe", "klavír", "kytara", "kolo", "knihy", "videohry", "sešity", "sova", "závěsy", "záclony", "křeslo", "skříň", "obraz", "to není vše"];
  List<String> tabulka1Cj = ["pokoj", "rodiče", "postel", "psací stůl", "počítač", "stůl", "židle", "dveře", "okno", "komoda",                   "skříň", "koberec", "noční stolek", "lampička","un piano","une guitare","un vélo","des livres","des jeux vidéo","des cahiers","un hibou","des rideaux","un fauteuil","un placard","un tableau","c'est pas tout",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slovní zásoba k lekci 2',  style: TextStyle(
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
        //mainAxisAlignment: MainAxisAlignment.center,
        child: Container(
          //mainAxisAlignment: MainAxisAlignment.center,
          padding: EdgeInsets.all(25),
          child: Table(
            border: TableBorder.all(),
            //defaultColumnWidth: const FixedColumnWidth(200.0),

            children: [
              for (var i = 0; i < tabulka1Fj.length; i++) TableRow(
                  children: <Widget>[
                    Text(
                      " " + tabulka1Fj[i],
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,),),
                    Text(
                      " " + tabulka1Cj[i],
                      style: const TextStyle(
                          fontSize: 14),
                    )
                  ]
              )
            ],
          ),
          //mainAxisAlignment: MainAxisAlignment.center,
        ),
        //mainAxisAlignment: MainAxisAlignment.center,

      ),
    );
  }
}
