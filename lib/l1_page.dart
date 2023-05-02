import 'package:edufrance_v1/mluvnice1.dart';
import 'package:edufrance_v1/slova1.dart';
import 'dart:async';

import 'package:assets_audio_player/assets_audio_player.dart';
//import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
//import 'player/PlayingControls.dart';
//import 'player/PositionSeekWidget.dart';
//import 'player/SongsSelector.dart';

final assetsAudioPlayer = AssetsAudioPlayer();
//final assetsAudioPlayer = AssetsAudioPlayer();



class l1 extends StatefulWidget {
  const l1({Key? key}) : super(key: key);

  @override
  State<l1> createState() => _l1State();
}

class _l1State extends State<l1> {
  late AssetsAudioPlayer _assetsAudioPlayer;
  final List<StreamSubscription> _subscriptions = [];
  final audios = <Audio>[
    Audio(
    'assets/audios/lekce1.mp3'
    )
  ];
  // final assetsAudioPlayer = AssetsAudioPlayer();


  List<String> tabulka1Fj = ["les membres de la famille", "les parents", "le père", "le beau-père", "la mère", "la belle-mère", "le fils", "la fille", "le frère", "le demi-frère", "le beau-frère", "la soeur", "la demi-sœur", "la belle-sœur", "le mari", "la femme", "l'oncle", "la tante", "le cousin", "la cousine", "le neveu", "la nièce", "les grands-parents", "le grand-père", "la grand-mère", "aîné/aînée", "cadet/cadette", "jumeau/jumelle", "les relations", "célibataire", "mariés", "le mari", "la mariée", "la lune de miel/le voyage de noces", "le Pacs", "séparé, la séparation", "divorcé, le divorce", "le veuf", "la veuve", "le copain", "la copine", "le partenaire", "bien s’entendre avec", "être fâché contre", "se disputer avec", "quitter qq", "être amoureux DE", "avoir le coup de foudre (pour qq)", "se marier avec/epouser qq", "reprocher qqch à qqn", "faire des compliments à qq", "la naissance", "les bébés", "l’enfance", "les enfants", "l’adolescence", "les ados/les jeunes", "l’âge adulte", "les adultes", "la retraite", "les personnes âgées/les vieux (hovorově)", "un vieux monsieur", "une vieille dame", "la mort", "le décès", "mineur", "majeur", "les tâches ménagères", "faire le ménage", "faire la vaisselle", "faire la cuisine", "faire les courses", "passer l’aspirateur", "repasser", "laver le sol", "passer la poussière"];
  List<String> tabulka1Cj = ["členové rodiny", "rodiče", "otec", "tchán", "matka", "tchýně", "syn", "dcera", "bratr", "nevlastní bratr", "švagr", "sestra", "nevlastní sestra", "švagrová", "manžel", "manželka", "strýc", "teta", "bratranec", "sestřenice", "synovec", "neteř", "prarodiče", "dědeček", "babička", "starší", "mladší", "dvojče", "vztahy", "svobodný", "manželé", "manžel", "nevěsta", "svatební cesta", "registrované partnerství", "rozejití, rozchod", "rozvedený, rozvod", "vdovec", "vdova", "přítel", "přítelkyně", "partner", "dobře vycházet s", "zlobit se na", "hádat se s", "nechat něco být", "být zamilovaný do", "láska na první pohled ", "vzít si/být ženatý s někým", "vyčítat něco někomu ", "pochválit někoho", "narození", "miminka", "dětství", "děti", "dospívání", "mladí", "dospělost", "dospělí", "důchod", "staří", "starý pán", "stará dáma", "smrt", "úmrtí", "nezletilý", "zletilý", "domácí práce", "uklízet", "mýt nádobí", "vařit", "nakupovat", "vysávat", "žehlit", "vytírat podlahu", "utírat prach"];
  List<String> tabulka2Fj = ["je (j´)", "tu", "il, elle, on", "nous", "vous", "Ils", "elles"];
  List<String> tabulka2Cj = ["já", "ty", "on, ona, my", "my", "vy", "oni", "ony"];
  List<String> tabulka3Fj = ["moi", "toi", "lui, elle", "nous", "vous", "eux, elles"];
  List<String> tabulka3Cj = ["já", "ty", "on, ona", "my", "vy", "oni, ony"];
  List<String> tabulka4A = ["je suis (já jsem)", "tu es (ty jsi)", "il/elle/on est (on/ona/my je/jsme)"];
  List<String> tabulka4B = ["nous sommes (my jsme)", "vous êtes (vy jste)", "Ils/elles sont (oni/ony jsou)"];
  List<String> tabulka5A = ["j’ai (já mám)", "tu as (ty máš)", "il/elle/on a (on/ona/my má/máme)"];
  List<String> tabulka5B = ["nous avons (my máme)", "vous avez (vy máte)", "Ils/elles ont (oni/ony mají)"];
  List<String> tabulka6A = ["je fais (já dělám)", "tu fais (ty děláš)", "il/elle/on fait (on/ona/my dělá/děláme)"];
  List<String> tabulka6B = ["nous faisons (my děláme)", "vous faites (vy děláte)", "Ils/elles font (oni/ony dělají)"];

  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final controller3 = TextEditingController();
  final controller4 = TextEditingController();
  final controller5 = TextEditingController();
  final controller6 = TextEditingController();
  final controller7 = TextEditingController();
  final controller8 = TextEditingController();
  final controller9 = TextEditingController();
  final controller10 = TextEditingController();
  final controller11 = TextEditingController();
  final controller12 = TextEditingController();
  final controller13 = TextEditingController();
  final controller14 = TextEditingController();
  final controller15 = TextEditingController();
  final controller16 = TextEditingController();
  final controller17 = TextEditingController();
  final controller18 = TextEditingController();
  final controller19 = TextEditingController();
  final controller20 = TextEditingController();
  final controller21 = TextEditingController();
  final controller22 = TextEditingController();
  final controller23 = TextEditingController();
  final controller24 = TextEditingController();
  final controller25 = TextEditingController();
  final controller26 = TextEditingController();
  final controller27 = TextEditingController();
  final controller28 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Première leçon',
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
                          height: 100, child:
                      Text("První lekce se zabývá...")
                      )
                  );
                },
              );
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Première leçon',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    //foreground:
                    fontFamily: "Font1"),
              ),

              const Text(
                'La famille',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    //foreground:
                    fontFamily: "Font1"),
              ),
              const SizedBox(
                height: 15,
                width: 15,
              ),
              const SizedBox(
                height: 40,
                width: 360,
                child: Text(
                  'Úvodní text:',
                  textAlign: TextAlign.justify,
                  //textWidthBasis: TextWidthBasis.longestLine,
                  style: TextStyle(
                    //textBaseline: TextBaseline.alphabetic,
                      fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 20,
                width: 360,
                child: Text(
                  'N = Nicolle',
                  textAlign: TextAlign.justify,
                  //textWidthBasis: TextWidthBasis.longestLine,
                  style: TextStyle(
                      //textBaseline: TextBaseline.alphabetic,
                      fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 20,
                width: 360,
                child: Text(
                  'P = Pierre',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 15),
                ),
              ),

              const SizedBox(
                height: 20,
                width: 360,
                child: Text(
                  'N: Salut Pierre',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.indigo,
                  ),
                ),
              ),


              const SizedBox(
                height: 20,
                width: 360,
                child: Text(
                  'P: Salut Nicole, ça va?',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 15),
                ),
              ),

              const SizedBox(
                height: 20,
                width: 360,
                child: Text(
                  'N: Oui, je vais bien. Je ne sais rien de ta famille. Est-ce que tu as une soeur?',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.indigo,
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
                width: 360,
                child: Text(
                  'P: Non, j’ai seulement un frère. Il s’appelle Hugo.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 15),
                ),
              ),

              const SizedBox(
                height: 20,
                width: 360,
                child: Text(
                  'N: Est-ce que tu te disputes souvent avec Hugo?',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.indigo,
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
                width: 360,
                child: Text(
                  'P: Pas souvent mais parfois oui.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 15),
                ),
              ),

              const SizedBox(
                height: 20,
                width: 360,
                child: Text(
                  'N: Et tes grands-parents, est-ce qu’ils vivent avec vous?',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.indigo,
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
                width: 360,
                child: Text(
                  'P: Ma grand-mère est morte il y a trois ans et mon grand-père vit avec nous donc à notre maison vivent cinq personnes.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 15),
                ),
              ),

              const SizedBox(
                height: 20,
                width: 360,
                child: Text(
                  'N: Oh, maintenant je comprends.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.indigo,
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
                width: 360,
                child: Text(
                  'P: Oui bon donc à lundi.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 15),
                ),
              ),

              const SizedBox(
                height: 20,
                width: 360,
                child: Text(
                  'N: À lundi.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.indigo,
                  ),
                ),
              ),

              const SizedBox(
                height: 40,
                width: 360,
                child: Text(
                  'Český překlad:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.indigo,
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
                width: 360,
                child: Text(
                  'N: Ahoj Petře',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.indigo,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
                width: 360,
                child: Text(
                  'P: Ahoj Nicole, jak se máš?',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    //color: Colors.indigo,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
                width: 360,
                child: Text(
                  'N: Mám se dobře. Nevím nic o tvé rodině. Máš sestru?',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.indigo,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
                width: 360,
                child: Text(
                  'P: Ne, mám jen jednoho bratra. Jmenuje se Hugo.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    //color: Colors.indigo,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
                width: 360,
                child: Text(
                  'N: Hádáte se spolu často?',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.indigo,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
                width: 360,
                child: Text(
                  'P: Často ne, ale někdy ano.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                   // color: Colors.indigo,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
                width: 360,
                child: Text(
                  'N: A vaši prarodiče, bydlí s vámi?',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.indigo,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
                width: 360,
                child: Text(
                  'P: Moje babička zemřela před třemi lety a děda žije s námi, takže u nás doma žije pět lidí.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                   // color: Colors.indigo,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
                width: 360,
                child: Text(
                  'N: Aha, už rozumím.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.indigo,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
                width: 360,
                child: Text(
                  'P: Uvidíme se v pondělí.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                   // color: Colors.indigo,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
                width: 360,
                child: Text(
                  'N: Naviděnou v pondělí.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.indigo,
                  ),
                ),
              ),

              const SizedBox(
                height: 40,
                width: 360,
                child: Text(
                  'Otázky k úvodnímu textu:',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.indigo,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
                width: 360,
                child: Text(
                  "Comment s'appelle le frère de Pierre? (Jak se jmenuje Petrův bratr?) ",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    // color: Colors.indigo,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
                width: 360,
                child: Text(
                  'Est-ce que Pierre a une soeur? (Má Petr sestru?)',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    // color: Colors.indigo,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
                width: 360,
                child: Text(
                  'Où habite le grand-père de Pierre? (Kde bydlí Petrův dědeček?)',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    // color: Colors.indigo,
                  ),
                ),
              ),







          //const Image(image: AssetImage('graphics/img1.png')),
          //const Image(image: AssetImage('graphics/img2.png')),

              const SizedBox(height: 15,),







              const SizedBox(height: 20,),
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
                          return const slovni();
                        })
                    );
                  }),
/*
              const Text(
                'Slovní zásoba',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    //foreground:
                    fontFamily: "Font1"),
              ),
              Table(
                border: TableBorder.all(),
                defaultColumnWidth: const FixedColumnWidth(200.0),
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
              const SizedBox(height: 15,),

 */

              const SizedBox(height: 15,),

             /* const Text(
                'Mluvnice',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    //foreground:
                    fontFamily: "Font1"),
              ),

              */
              CupertinoButton.filled(
                  borderRadius: BorderRadius.circular(40),
                  child: const Text(
                    ' Mluvnice ',
                    style: TextStyle(
                        fontSize: 28,
                        //foreground:
                        fontFamily: "Font1"),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context){
                          return const mluvnice1();
                        })
                    );
                  }),

              const SizedBox(height: 15,),
              const Text(
                "Cvičení",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    //foreground:
                    fontFamily: "Font1"),
              ),

              const SizedBox(height: 30,),

              const SizedBox(
                width: 360,
                child: Text('Přeložte:',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,),),),

              const SizedBox(height: 15,),



                Row(

                  children: [
                    const SizedBox(width: 10,),
                    const Text("1. Já jsem svobodný."),
                    const SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        controller: controller1,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Sem přelož..."
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                  ],
                ),




               Row(
                  children: [
                    const SizedBox(width: 10,),
                    const Text("2. On má sestru."),
                    const SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        controller: controller2,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Sem přelož..."
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                  ],
                ),



             Row(
                  children: [
                    const SizedBox(width: 10,),
                    const Text("3. Vy jste vdova. "),
                    const SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        controller: controller3,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Sem přelož..."
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                  ],
                ),


             Row(
                  children: [
                    const SizedBox(width: 10,),
                    const Text("4. Oni jsou zamilovaní."),
                    const SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        controller: controller4,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Sem přelož..."
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                  ],
                ),


              const SizedBox(height: 15,),


              CupertinoButton.filled(
                  borderRadius: BorderRadius.circular(40),
                  child: const Text(
                    ' Zkontrolovat',
                    style: TextStyle(
                        fontSize: 28,
                        //foreground:
                        fontFamily: "Font1"),
                  ),
                  onPressed: () {
                    var Controller1 = controller1.text;
                    var Controller2 = controller2.text;
                    var Controller3 = controller3.text;
                    var Controller4 = controller4.text;

                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            content:
                            SizedBox(height: 100, child:
                            Column(
                                children: [
                                  Row(
                                    children: [
                                      if (Controller1 == "Je suis célibataire." || Controller1 == "je suis célibataire." || Controller1 == "Je suis célibataire" || Controller1 == "je suis célibataire")
                                        Text(Controller1, style: const TextStyle(color: Colors.green,))
                                      else Text(Controller1, style: const TextStyle(color: Colors.red,)), Text("")
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      if (Controller2 == "Il a une souer." || Controller2 == "Il a une souer" || Controller2 == "il a une souer." || Controller2 == "il a une souer.")
                                        Text(Controller2, style: const TextStyle(color: Colors.green,))
                                      else Text(Controller2, style: const TextStyle(color: Colors.red,)), Text("")
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      if (Controller3 == "Vous êtes veuve." || Controller3 == "vous êtes veuve." || Controller3 == "vous êtes veuve")
                                        Text(Controller3, style: const TextStyle(color: Colors.green,))
                                      else Text(Controller3, style: const TextStyle(color: Colors.red,)), Text(" ")
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      if (Controller4 == "Ils sont amoureux." || Controller4 == "ils sont amoureux." || Controller4 == "Ils sont amoureux" || Controller4 == "ils sont amoureux")
                                        Text(Controller4, style: const TextStyle(color: Colors.green,))
                                      else Text(Controller4, style: const TextStyle(color: Colors.red,)), Text("")
                                    ],
                                  ),

                                ]
                            ),
                            )
                        );
                      },
                    );

                  }),



              const SizedBox(height: 30,),

              const SizedBox(
                width: 360,
                child: Text('Převeďte věty do záporu:',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,),),),

              const SizedBox(height: 15,),

              Row(
                  children: [
                    const SizedBox(width: 10,),
                    const Text("1. J’aime beaucoup faire le ménage."),
                    const SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        controller: controller5,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Sem přelož..."
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                  ],
                ),


          Row(
                  children: [
                    const SizedBox(width: 10,),
                    const Text("2. Il est amoureux de Jacquie."),
                    const SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        controller: controller6,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Sem přelož..."
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                  ],
                ),


              Row(
                  children: [
                    const SizedBox(width: 10,),
                    const Text("3. Vous avez le coup de foudre."),
                    const SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        controller: controller7,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Sem přelož..."
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                  ],
                ),


              Row(
                  children: [
                    const SizedBox(width: 10,),
                    const Text("4. Ils ont des enfants. "),
                    const SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        controller: controller8,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Sem přelož..."
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                  ],
                ),


             Row(
                  children: [
                    const SizedBox(width: 10,),
                    const Text("5. Elle est cadette."),
                    const SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        controller: controller9,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Sem přelož..."
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                  ],
                ),


              const SizedBox(height: 15,),



              CupertinoButton.filled(
                  borderRadius: BorderRadius.circular(40),
                  child: const Text(
                    ' Zkontrolovat ',
                    style: TextStyle(
                        fontSize: 28,
                        //foreground:
                        fontFamily: "Font1"),
                  ),
                  onPressed: () {
                    var Controller5 = controller6.text;
                    var Controller6 = controller7.text;
                    var Controller7 = controller8.text;
                    var Controller8 = controller9.text;
                    var Controller9 = controller10.text;
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            content:
                            SizedBox(height: 105, child:
                            Column(
                                children: [
                                  Row(
                                    children: [
                                      if (Controller5 == "Je n'aime pas beaucoup faire le ménage.")
                                        Text(Controller5, style: const TextStyle(color: Colors.green,))
                                      else Text(Controller5, style: const TextStyle(color: Colors.red,)), Text(" Je n'aime pas beaucoup faire le ménage.")
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      if (Controller6 == "Il n´est pas amoureux de Jacquie.")
                                        Text(Controller6, style: const TextStyle(color: Colors.green,))
                                      else Text(Controller6, style: const TextStyle(color: Colors.red,)), Text(" Il n´est pas amoureux de Jacquie.")
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      if (Controller7 == "Vous n'avez pas le coup de foudre.")
                                        Text(Controller7, style: const TextStyle(color: Colors.green,))
                                      else Text(Controller7, style: const TextStyle(color: Colors.red,)), Text(" Vous n'avez pas le coup de foudre.")
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      if (Controller8 == "Ils n'ont pas des enfants.")
                                        Text(Controller8, style: const TextStyle(color: Colors.green,))
                                      else Text(Controller8, style: const TextStyle(color: Colors.red,)), Text(" Ils n'ont pas des enfants.")
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      if (Controller9 == "Elle n'est pas cadette.")
                                        Text(Controller9, style: const TextStyle(color: Colors.green,))
                                      else Text(Controller9, style: const TextStyle(color: Colors.red,)), Text(" Elle n'est pas cadette.")
                                    ],
                                  ),

                                ]
                            ),
                            )
                        );
                      },
                    );

                  }),




              const SizedBox(height: 30,),

              const SizedBox(
                width: 360,
                child: Text('Přeložte:',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,),),),

              const SizedBox(height: 15,),

             Row(
                  children: [
                    const SizedBox(width: 10,),
                    const Text("Le père"),
                    const SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        controller: controller10,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Sem přelož..."
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                  ],

                ),


             Row(
                  children: [
                    const SizedBox(width: 10,),
                    const Text("Le fils"),
                    const SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        controller: controller11,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Sem přelož..."
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                  ],
                ),


             Row(
                  children: [
                    const SizedBox(width: 10,),
                    const Text("Le neveu"),
                    const SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        controller: controller12,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Sem přelož..."
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                  ],
                ),


             Row(
                  children: [
                    const SizedBox(width: 10,),
                    const Text("La belle-sœur"),
                    const SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        controller: controller13,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Sem přelož..."
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                  ],
                ),


            Row(
                  children: [
                    const SizedBox(width: 10,),
                    const Text("Le beau-père"),
                    const SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        controller: controller14,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Sem přelož..."
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                  ],
                ),

            Row(
                  children: [
                    const SizedBox(width: 10,),
                    const Text("Le frère cadet"),
                    const SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        controller: controller15,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Sem přelož..."
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                  ],
                ),


           Row(
                  children: [
                    const SizedBox(width: 10,),
                    const Text("La mère"),
                    const SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        controller: controller16,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Sem přelož..."
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                  ],
                ),


            Row(
                  children: [
                    const SizedBox(width: 10,),
                    const Text("L’oncle"),
                    const SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        controller: controller17,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Sem přelož..."
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                  ],
                ),


             Row(
                  children: [
                    const SizedBox(width: 10,),
                    const Text("La femme"),
                    const SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        controller: controller18,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Sem přelož..."
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                  ],
                ),


            Row(
                  children: [
                    const SizedBox(width: 10,),
                    const Text("Le cousin"),
                    const SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        controller: controller19,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Sem přelož..."
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                  ],
                ),

            Row(
                  children: [
                    const SizedBox(width: 10,),
                    const Text("La soeur"),
                    const SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        controller: controller20,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Sem přelož..."
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                  ],
                ),

            Row(
                  children: [
                    const SizedBox(width: 10,),
                    const Text("Le grand-père"),
                    const SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        controller: controller21,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Sem přelož..."
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                  ],
                ),


              const SizedBox(height: 15,),



              CupertinoButton.filled(
                  borderRadius: BorderRadius.circular(40),
                  child: const Text(
                    ' Zkontrolovat ',
                    style: TextStyle(
                        fontSize: 28,
                        //foreground:
                        fontFamily: "Font1"),
                  ),
                  onPressed: () {
                    var Controller1 = controller10.text;
                    var Controller2 = controller11.text;
                    var Controller3 = controller12.text;
                    var Controller4 = controller13.text;
                    var Controller5 = controller14.text;
                    var Controller6 = controller15.text;
                    var Controller7 = controller16.text;
                    var Controller8 = controller17.text;
                    var Controller9 = controller18.text;
                    var Controller10 = controller19.text;
                    var Controller11 = controller20.text;
                    var Controller12 = controller21.text;
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            content:
                            SizedBox(height: 252, child:
                            Column(
                                children: [
                                  Row(
                                    children: [
                                      if (Controller1 == "otec")
                                        Text(Controller1, style: const TextStyle(color: Colors.green,))
                                      else Text(Controller1, style: const TextStyle(color: Colors.red,)), Text(" otec")
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      if (Controller2 == "syn")
                                        Text(Controller2, style: const TextStyle(color: Colors.green,))
                                      else Text(Controller2, style: const TextStyle(color: Colors.red,)), Text(" syn")
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      if (Controller3 == "synovec")
                                        Text(Controller3, style: const TextStyle(color: Colors.green,))
                                      else Text(Controller3, style: const TextStyle(color: Colors.red,)), Text(" synovec")
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      if (Controller4 == "švagrová")
                                        Text(Controller4, style: const TextStyle(color: Colors.green,))
                                      else Text(Controller4, style: const TextStyle(color: Colors.red,)), Text(" švagrová")
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      if (Controller5 == "tchán")
                                        Text(Controller5, style: const TextStyle(color: Colors.green,))
                                      else Text(Controller5, style: const TextStyle(color: Colors.red,)), Text(" tchán")
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      if (Controller6 == "mladší bratr")
                                        Text(Controller6, style: const TextStyle(color: Colors.green,))
                                      else Text(Controller6, style: const TextStyle(color: Colors.red,)), Text(" mladší bratr")
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      if (Controller7 == "matka")
                                        Text(Controller7, style: const TextStyle(color: Colors.green,))
                                      else Text(Controller7, style: const TextStyle(color: Colors.red,)), Text(" matka")
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      if (Controller8 == "strýc")
                                        Text(Controller8, style: const TextStyle(color: Colors.green,))
                                      else Text(Controller8, style: const TextStyle(color: Colors.red,)), Text(" strýc")
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      if (Controller9 == "manželka")
                                        Text(Controller9, style: const TextStyle(color: Colors.green,))
                                      else Text(Controller9, style: const TextStyle(color: Colors.red,)), Text(" manželka")
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      if (Controller10 == "bratranec")
                                        Text(Controller10, style: const TextStyle(color: Colors.green,))
                                      else Text(Controller10, style: const TextStyle(color: Colors.red,)), Text(" bratranec")
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      if (Controller11 == "sestra")
                                        Text(Controller11, style: const TextStyle(color: Colors.green,))
                                      else Text(Controller11, style: const TextStyle(color: Colors.red,)), Text(" sestra")
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      if (Controller12 == "dědeček")
                                        Text(Controller12, style: const TextStyle(color: Colors.green,))
                                      else Text(Controller12, style: const TextStyle(color: Colors.red,)), Text(" dědeček")
                                    ],
                                  ),
                                ]
                            ),
                            )
                        );
                      },
                    );

                  }),


              const SizedBox(height: 30,),

              const SizedBox(
                width: 360,
                child: Text('Doplňte osobní zájmena:',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,),),),

              const SizedBox(height: 15,),

              SizedBox(
                width: 330,
                child: Row(
                  children: [
                    const Text("……. s  ́ appelle Léa."),
                    const SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        controller: controller22,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Sem přelož..."
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: 330,
                child: Row(
                  children: [
                    const Text("……. tʼappelles Luc?"),
                    const SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        controller: controller23,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Sem přelož..."
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: 330,
                child: Row(
                  children: [
                    const Text(" ……. ai 13 ans"),
                    const SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        controller: controller24,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Sem přelož..."
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: 330,
                child: Row(
                  children: [
                    const Text("Ma soeur ? ……… a 7 ans"),
                    const SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        controller: controller25,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Sem přelož..."
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: 330,
                child: Row(
                  children: [
                    const Text("Ma famille et moi, …….. habitons à Prostějov"),
                    const SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        controller: controller26,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Sem přelož..."
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: 330,
                child: Row(
                  children: [
                    const Text("..….. suis tchèque"),
                    const SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        controller: controller27,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: "Sem přelož..."
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15,),



              CupertinoButton.filled(
                  borderRadius: BorderRadius.circular(40),
                  child: const Text(
                    ' Zkontrolovat ',
                    style: TextStyle(
                        fontSize: 28,
                        //foreground:
                        fontFamily: "Font1"),
                  ),
                  onPressed: () {
                    var Controller1 = controller22.text;
                    var Controller2 = controller23.text;
                    var Controller3 = controller24.text;
                    var Controller4 = controller25.text;
                    var Controller5 = controller26.text;
                    var Controller6 = controller27.text;
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            content:
                            SizedBox(height: 140, child:
                            Column(
                                children: [
                                  Row(
                                    children: [
                                      if (Controller1 == "Elle")
                                        Text(Controller1, style: const TextStyle(color: Colors.green,))
                                      else Text(Controller1, style: const TextStyle(color: Colors.red,)), Text(" Elle")
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      if (Controller2 == "Tu")
                                        Text(Controller2, style: const TextStyle(color: Colors.green,))
                                      else Text(Controller2, style: const TextStyle(color: Colors.red,)), Text(" Tu")
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      if (Controller3 == "J´")
                                        Text(Controller3, style: const TextStyle(color: Colors.green,))
                                      else Text(Controller3, style: const TextStyle(color: Colors.red,)), Text(" J´")
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      if (Controller4 == "Elle")
                                        Text(Controller4, style: const TextStyle(color: Colors.green,))
                                      else Text(Controller4, style: const TextStyle(color: Colors.red,)), Text("  Elle")
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      if (Controller5 == "nous")
                                        Text(Controller5, style: const TextStyle(color: Colors.green,))
                                      else Text(Controller5, style: const TextStyle(color: Colors.red,)), Text(" nous")
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      if (Controller6 == "Je")
                                        Text(Controller6, style: const TextStyle(color: Colors.green,))
                                      else Text(Controller6, style: const TextStyle(color: Colors.red,)), Text(" Je")
                                    ],
                                  ),

                                ]
                            ),
                            )
                        );
                      },
                    );

                  }),


              const SizedBox(height: 200,)
            ],
          ),
        ),
      ),
    );
  }
  @override
  void initState() {
    super.initState();
    _assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
    //_subscriptions.add(_assetsAudioPlayer.playlistFinished.listen((data) {
    //  print('finished : $data');
    //}));
    //openPlayer();
    _subscriptions.add(_assetsAudioPlayer.playlistAudioFinished.listen((data) {
      print('playlistAudioFinished : $data');
    }));
    _subscriptions.add(_assetsAudioPlayer.audioSessionId.listen((sessionId) {
      print('audioSessionId : $sessionId');
    }));

    openPlayer();
  }

}
void openPlayer() async {
  //var audios;
  var audios;
  await assetsAudioPlayer.open(
    Playlist(audios: audios, startIndex: 0),
    showNotification: true,
    autoStart: true,
  );
}

