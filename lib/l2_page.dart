import 'package:edufrance_v1/slova2.dart';
//import 'package:edufrance_v1/mluvnice3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:edufrance_v1/slova2.dart';
import 'package:edufrance_v1/palette.dart';

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
        title: const Text(
          'Deuxième leçon',
          style: TextStyle(
              fontSize: 28,
              //foreground:
              fontFamily: "Font1"),
        ),
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
                          height: 50, child:
                      Text("Druhá lekce se zabývá...")
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
        child: Container(
         // overflow: TextOverflow.ellipsis,
          margin: const EdgeInsets.all(15.0),
          //padding: const EdgeInsets.only(left: 5),
          //decoration: BoxDecoration(
          //border: Border.all(color: Colors.blueAccent)
          //),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //SizedBox(height: 10,),
              const Text(
                'Ma chambre',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,

                    //foreground:
                    fontFamily: "Font1"),
              ),

              const Text(
                'N = Nicolle',
                textAlign: TextAlign.left,
                //textWidthBasis: TextWidthBasis.longestLine,
                style: TextStyle(
                    //textBaseline: TextBaseline.alphabetic,
                    fontSize: 15),
              ),

              const Text(
                'P = Pierre',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15),
              ),

              const Text(
                '*Sonnerie du téléphone',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),

              const Text(
                'P: Salut Nicolle.',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15),
              ),

              const SizedBox(
                //height: 20,
                // width: 360,
                child: Text(
                  'N: Salut Pierre, que fais-tu?',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    color: Palette.kToDark,
                  ),
                ),
              ),

              const SizedBox(
                // height: 20,
                // width: 360,
                child: Text(
                  'P: Moi? Je refais ma chambre, je veux peindre le mur en bleu et acheter une nouvelle commode.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15),
                ),
              ),

              const SizedBox(
                // height: 20,
                // width: 360,
                child: Text(
                  'N: Super, c´est une bonne idée.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    color: Palette.kToDark,
                  ),
                ),
              ),

              const SizedBox(
                // height: 20,
                // width: 360,
                child: Text(
                  "P: Je vais en ville dans un moment, j'ai besoin d'acheter de la peinture et quelques autres choses. Tu veux m'aider?",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15),
                ),
              ),

              const SizedBox(
                //height: 20,
                //width: 360,
                child: Text(
                  'N: Oui, retrouvez-moi sur la place dans une demi-heure.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    color: Palette.kToDark,
                  ),
                ),
              ),

              const SizedBox(
                // height: 20,
                // width: 360,
                child: Text(
                  "P: Super j'ai hâte.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15),
                ),
              ),

              SizedBox(
                height: 15,
              ),

              Align(
                alignment: Alignment.center,
                child: CupertinoButton.filled(
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
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const slovni2();
                      }));
                    }),
              ),
              // const Image(image: AssetImage('graphics/l2_1.png'),),
              const Text(
                "Mluvnice:",
                style: TextStyle(),
              ),
              const Text(
                "Rody podstatných jmen: Ve francouzštině máme dva rody podstatných jmen - ženský a mužský.",
                style: TextStyle(),
              ),
              Table(
                border: TableBorder(horizontalInside: BorderSide(width: 0.5, color: Palette.kToDark, style: BorderStyle.solid)),
                //border: TableBorder.all(),
                children: const [
                   TableRow(
                      children: <Widget>[
                        Text(
                          " le/l´",
                          style: TextStyle(
                            height: 2,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,),),
                        Text(
                          " mužský rod" ,
                          style: TextStyle(
                              height: 2,
                              fontSize: 14),
                        )
                      ]
                  ),
                  TableRow(

                      children: <Widget>[
                        Text(
                          " la",
                          style: TextStyle(
                            fontSize: 14,
                            height: 2,
                            fontWeight: FontWeight.bold,),),
                        Text(
                          " ženský rod" ,
                          style: TextStyle(
                              height: 2,
                              fontSize: 14),
                        )
                      ]
                  )
                ],


          ),
              const SizedBox(height: 15,),
              const Text(
                "Podle čeho rod podstatného jména poznat?",
                style: TextStyle(

                ),
              ),
              const SizedBox(height: 15,),
                 const Text(
                    overflow: TextOverflow.visible,
                  "- determinantu (člen, zájmeno,...), např. le/un/ton travail, la/une/cette réunion",
                  style: TextStyle(

                  ),
                ),
              const Text(
                overflow: TextOverflow.visible,
                "- kontextu (přídavného jméno, shoda), např. un travail intéressant, une réunion intéressante, la réunion qu'il a convoquée",
                style: TextStyle(

                ),
              ),
              const Text(
                overflow: TextOverflow.visible,
                "- přípon, např. –et většinou pro rod mužský (le billet, le projet) a –tion pro rod ženský (l´addition, l'inscription)",
                style: TextStyle(

                ),
              ),
              const SizedBox(height: 15,),

              const Text(
                overflow: TextOverflow.visible,
                "Přípony typické pro mužský rod:",
                style: TextStyle(

                ),
              ),
              Table(
                border: TableBorder(horizontalInside: BorderSide(width: 0.5, color: Palette.kToDark, style: BorderStyle.solid)),
                children: const [
                  TableRow(
                      children: <Widget>[
                        Text(
                          " koncovka:",
                          style: TextStyle(
                            height: 2,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,),),
                        Text(
                          " příklad slova:" ,
                          style: TextStyle(
                              height: 2,
                              fontSize: 14,
                            fontWeight: FontWeight.bold,),

                        )
                      ]
                  ),
                  TableRow(
                      children: <Widget>[
                        Text(
                          " - age",
                          style: TextStyle(
                            fontSize: 14,
                            height: 2,
                            fontWeight: FontWeight.bold,),),
                        Text(
                          " voyage, passage, courage" ,
                          style: TextStyle(
                              height: 2,
                              fontSize: 14),
                        )
                      ]
                  ),
                  TableRow(
                      children: <Widget>[
                        Text(
                          " - ail",
                          style: TextStyle(
                            fontSize: 14,
                            height: 2,
                            fontWeight: FontWeight.bold,),),
                        Text(
                          " travail, detail" ,
                          style: TextStyle(
                              height: 2,
                              fontSize: 14),
                        )
                      ]
                  ),
                  TableRow(
                      children: <Widget>[
                        Text(
                          " - ard",
                          style: TextStyle(
                            fontSize: 14,
                            height: 2,
                            fontWeight: FontWeight.bold,),),
                        Text(
                          " retard, regard, boulevard" ,
                          style: TextStyle(
                              height: 2,
                              fontSize: 14),
                        )
                      ]
                  ),
                  TableRow(
                      children: <Widget>[
                        Text(
                          " - eau",
                          style: TextStyle(
                            fontSize: 14,
                            height: 2,
                            fontWeight: FontWeight.bold,),),
                        Text(
                          " bateau, château" ,
                          style: TextStyle(
                              height: 2,
                              fontSize: 14),
                        )
                      ]
                  ),
                  TableRow(
                      children: <Widget>[
                        Text(
                          " - et",
                          style: TextStyle(
                            fontSize: 14,
                            height: 2,
                            fontWeight: FontWeight.bold,),),
                        Text(
                          " billet, carnet, effet, commet" ,
                          style: TextStyle(
                              height: 2,
                              fontSize: 14),
                        )
                      ]
                  ),
                  TableRow(
                      children: <Widget>[
                        Text(
                          " - ier",
                          style: TextStyle(
                            fontSize: 14,
                            height: 2,
                            fontWeight: FontWeight.bold,),),
                        Text(
                          " cahier, calendrier, papier" ,
                          style: TextStyle(
                              height: 2,
                              fontSize: 14),
                        )
                      ]
                  ),
                  TableRow(
                      children: <Widget>[
                        Text(
                          " - in",
                          style: TextStyle(
                            fontSize: 14,
                            height: 2,
                            fontWeight: FontWeight.bold,),),
                        Text(
                          " bulletin, chemin, dessin" ,
                          style: TextStyle(
                              height: 2,
                              fontSize: 14),
                        )
                      ]
                  ),
                  TableRow(
                      children: <Widget>[
                        Text(
                          " - isme",
                          style: TextStyle(
                            fontSize: 14,
                            height: 2,
                            fontWeight: FontWeight.bold,),),
                        Text(
                          " optimisme, libéralisme, tourisme" ,
                          style: TextStyle(
                              height: 2,
                              fontSize: 14),
                        )
                      ]
                  ),
                  TableRow(
                      children: <Widget>[
                        Text(
                          " - ment",
                          style: TextStyle(
                            fontSize: 14,
                            height: 2,
                            fontWeight: FontWeight.bold,),),
                        Text(
                          " document, changement, développement" ,
                          style: TextStyle(
                              height: 2,
                              fontSize: 14),
                        )
                      ]
                  )
                ],


              ),
              const SizedBox(height: 15,),
              const Text(
                "Přípony pro ženský rod:",
                style: TextStyle(

                ),
              ),



              Table(
                border: TableBorder(horizontalInside: BorderSide(width: 0.5, color: Palette.kToDark, style: BorderStyle.solid)),
                children: const [
                  TableRow(
                      children: <Widget>[
                        Text(
                          " koncovka:",
                          style: TextStyle(
                            height: 2,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,),),
                        Text(
                          " příklad slova:" ,
                          style: TextStyle(
                              height: 2,
                              fontSize: 14,fontWeight: FontWeight.bold,),
                        )
                      ]
                  ),
                  TableRow(
                      children: <Widget>[
                        Text(
                          " - ade",
                          style: TextStyle(
                            fontSize: 14,
                            height: 2,
                            fontWeight: FontWeight.bold,),),
                        Text(
                          " promenade" ,
                          style: TextStyle(
                              height: 2,
                              fontSize: 14),
                        )
                      ]
                  ),
                  TableRow(
                      children: <Widget>[
                        Text(
                          " - esse",
                          style: TextStyle(
                            fontSize: 14,
                            height: 2,
                            fontWeight: FontWeight.bold,),),
                        Text(
                          " faiblesse, politesse, vitesse" ,
                          style: TextStyle(
                              height: 2,
                              fontSize: 14),
                        )
                      ]
                  ),
                  TableRow(
                      children: <Widget>[
                        Text(
                          " - ette",
                          style: TextStyle(
                            fontSize: 14,
                            height: 2,
                            fontWeight: FontWeight.bold,),),
                        Text(
                          " fourchette, recette" ,
                          style: TextStyle(
                              height: 2,
                              fontSize: 14),
                        )
                      ]
                  ),
                  TableRow(
                      children: <Widget>[
                        Text(
                          " - euse",
                          style: TextStyle(
                            fontSize: 14,
                            height: 2,
                            fontWeight: FontWeight.bold,),),
                        Text(
                          " serveuse, travailleuse, vendeuse" ,
                          style: TextStyle(
                              height: 2,
                              fontSize: 14),
                        )
                      ]
                  ),
                  TableRow(
                      children: <Widget>[
                        Text(
                          " - ine",
                          style: TextStyle(
                            fontSize: 14,
                            height: 2,
                            fontWeight: FontWeight.bold,),),
                        Text(
                          " cabine, vitrine, origine" ,
                          style: TextStyle(
                              height: 2,
                              fontSize: 14),
                        )
                      ]
                  ),
                  TableRow(
                      children: <Widget>[
                        Text(
                          " - rie",
                          style: TextStyle(
                            fontSize: 14,
                            height: 2,
                            fontWeight: FontWeight.bold,),),
                        Text(
                          " catégorie, imprimerie, industrie" ,
                          style: TextStyle(
                              height: 2,
                              fontSize: 14),
                        )
                      ]
                  ),
                  TableRow(
                      children: <Widget>[
                        Text(
                          " - tion",
                          style: TextStyle(
                            fontSize: 14,
                            height: 2,
                            fontWeight: FontWeight.bold,),),
                        Text(
                          " nation, direction, interdiction, invitation" ,
                          style: TextStyle(
                              height: 2,
                              fontSize: 14),
                        )
                      ]
                  ),
                  TableRow(
                      children: <Widget>[
                        Text(
                          " - ure",
                          style: TextStyle(
                            fontSize: 14,
                            height: 2,
                            fontWeight: FontWeight.bold,),),
                        Text(
                          " brochure, mesure, écriture" ,
                          style: TextStyle(
                              height: 2,
                              fontSize: 14),
                        )
                      ]
                  ),

                ],


              ),
              SizedBox(
                height: 15,
              ),
              const Text(
                "Množná čísla podstatných jmen:",
                style: TextStyle(
                    height: 2,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),

              const Text(
                "Množné číslo vytvoříme přidáním koncového -s.",
                style: TextStyle(
                    height: 2,
                   // fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
              const Text(
                "Setkáme se ale i s řadou výjimek.",
                style: TextStyle(
                    height: 2,
                    //fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),

             Container(
               //width: 200,
               child: Row(
                 children:const [
                   SizedBox(width: 20,) ,
                   Expanded(
                     child: Text(
                        "jména zakončená na -s, -z, -x se v množném čísle nemění les bras, les pays",
                        style: TextStyle(
                            height: 2,
                            //fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                   ),]
               ),
             ),


          Container(
              child: Row(
                children: const [
                  SizedBox(width: 20,) ,
                  Expanded(
                    child: Text(
                    "jména zakončená na -al tvoří množné číslo koncovkou -aux les chevaux, les hôpitaux, les journaux",
                    style: TextStyle(
                        height: 2,
                        //fontWeight: FontWeight.bold,
                        fontSize: 14),
                ),
                  ),]
              ),),

          Container(
              child: Row(
                children: const [
                  SizedBox(width: 20,) ,
                  Expanded(
                    child: Text(
                    "jména zakončená na -au, -eau, -eu tvoří množné číslo připojením -x les bureaux, les cadeaux, les lieux",
                    style: TextStyle(
                        height: 2,
                        //fontWeight: FontWeight.bold,
                        fontSize: 14),
                ),
                  ),]
              ),),

          Container(
              child: Row(
                children: const [ SizedBox(width: 20,) ,
                  Expanded(
                    child: Text(
                    "někdy nepravidelnél'oeil -> les yeux",
                    style: TextStyle(
                        height: 2,
                        //fontWeight: FontWeight.bold,
                        fontSize: 14),
                ),
                  ),]
              ),),
          ]
        ),
      ),
      )
    );
  }
}
