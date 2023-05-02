import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:edufrance_v1/palette.dart';
class slovni extends StatefulWidget {
  const slovni({Key? key}) : super(key: key);

  @override
  State<slovni> createState() => _slovniState();
}

class _slovniState extends State<slovni> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slovní zásoba k lekci 1',  style: TextStyle(
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
            border: TableBorder(horizontalInside: BorderSide(width: 0.5, color: Colors.indigo, style: BorderStyle.solid)),
            //border: TableBorder.all(),
            //defaultColumnWidth: const FixedColumnWidth(200.0),

            children: [
              for (var i = 0; i < tabulka1Fj.length; i++) TableRow(
                  children: <Widget>[
                    Text(
                      " " + tabulka1Fj[i],
                      style: const TextStyle(
                        fontSize: 14,
                        height: 2,
                        fontWeight: FontWeight.bold,),),
                    Text(
                      " " + tabulka1Cj[i],
                      style: const TextStyle(
                          height: 2,
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
