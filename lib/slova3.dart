import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class slovni3 extends StatefulWidget {
  const slovni3({Key? key}) : super(key: key);

  @override
  State<slovni3> createState() => _slovni2State();
}

class _slovni2State extends State<slovni3> {
  List<String> tabulka1Fj = ["les membres de la famille", "les parents", "le père", "le beau-père", "la mère", "la belle-mère", "le fils", "la fille", "le frère", "le demi-frère", "le beau-frère", "la soeur", "la demi-sœur", "la belle-sœur", "le mari", "la femme", "l'oncle", "la tante", "le cousin", "la cousine", "le neveu", "la nièce", "le grands-parents", "le grand-père", "la grand-mère", "aîné/aînée", "cadet/cadette", "jumeau/jumelle", "les relations", "célibataire", "marié", "le mari", "la mariée", "la lune de miel/le voyage de noces", "pacsé", "séparé, la séparation", "divorcé, le divorce", "le veuf", "la veuve", "le copain", "la copine", "le partenaire", "bien s’entendre avec", "être fâché contre", "se disputer avec", "quitter qq", "être amoureux DE", "avoir le coup de foudre (pour qq)", "se marier avec/epouser qq", "reprocher qqch à qqn", "faire des compliments à qq", "la naissance", "les bébés", "l’enfance", "les enfants", "l’adolescence", "les ados/les jeunes", "l’âge adulte", "les adultes", "la retraite", "les personnes âgées/les vieux (hovorově)", "un vieux monsieur", "une vieille dame", "la mort", "le décès", "mineur", "majeur", "les tâches ménagères", "faire le ménage", "faire la vaisselle", "faire la cuisine", "faire les courses", "passer l’aspirateur", "repasser", "laver le sol", "passer la poussière"];
  List<String> tabulka1Cj = ["členové rodiny", "rodiče", "otec", "tchán", "matka", "tchýně", "syn", "dcera", "bratr", "nevlastní bratr", "švagr", "sestra", "nevlastní sestra", "švagrová", "manžel", "manželka", "strýc", "teta", "bratranec", "sestřenice", "synovec", "neteř", "prarodiče", "dědeček", "babička", "starší", "mladší", "dvojče", "vztahy", "svobodný", "manželé", "manžel", "nevěsta", "svatební cesta", "registrované partnerství", "oddělený, oddělení", "rozvedený, rozvod", "vdovec", "vdova", "přítel", "přítelkyně", "partner", "dobře vycházet s", "zlobit se na", "hádat se s", "nechat něco být", "být zamilovaný do", "láska na první pohled", "vzít si/být ženatý s někým", "stěžovat si na někoho", "pochválit někoho", "narození", "miminko", "dětství", "děti", "dospívání", "mladí", "dospělost", "dospělí", "důchod", "staří", "starý pán", "stará dáma", "smrt", "úmrtí", "menší", "větší", "domácí práce", "uklízet", "mýt nádobí", "vařit", "nakupovat", "vysávat", "žehlit", "vytírat podlahu", "utírat prach"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slovní zásoba k lekci 3',  style: TextStyle(
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
