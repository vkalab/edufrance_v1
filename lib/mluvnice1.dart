import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mluvnice1 extends StatefulWidget {
  const mluvnice1({Key? key}) : super(key: key);

  @override
  State<mluvnice1> createState() => _mluvnice1State();
}

class _mluvnice1State extends State<mluvnice1> {

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
        title: const Text('Mluvnice lekce 1',  style: TextStyle(
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
            children: [
              const SizedBox(height: 15,),
              const SizedBox(
                width: 360,
                child: Text('Osobní zájmena:',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,),),),

              const  SizedBox(height: 15,),

              const SizedBox(
                  width: 360,
                  child: Text(
                      'Francouzština rozlišuje dva typy osobních zájmen. Zájmena nesamostatná a samostatná.')),

              const SizedBox(height: 30,),


              const SizedBox(
                width: 360,
                child: Text('Zájmena nesamostatná:',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,),),),

              const SizedBox(height: 15,),

              const SizedBox(
                  width: 360,
                  child: Text(
                      'Na rozdíl od češtiny se musí užívat k vyjádření osoby a čísla (pokud není podmět vyjádřen podstatným jménem nebo jinak)')),

              const SizedBox(height: 15,),

              const SizedBox(
                width: 360,
                child:
                Text("Příklad: Je suis tchèque. - Jsem Čech.")
                /* RichText(text:const TextSpan(
                  children: [
                    TextSpan(text: "Příklad: "),
                    TextSpan(text: "Je",style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: " suis tchèque. - Jsem Čech.")
              ],))*/,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,),

              const SizedBox(height: 15,),

              Table(

                border: TableBorder.all(),
                defaultColumnWidth: const FixedColumnWidth(100.0),
                children: [
                  for (var i = 0; i < tabulka2Fj.length; i++) TableRow(
                      children: <Widget>[
                        Text(
                          " " + tabulka2Fj[i],
                          style: const TextStyle(
                            fontSize: 14,),),
                        Text(
                          " " + tabulka2Cj[i],
                          style: const TextStyle(
                              fontSize: 14),
                        )
                      ]
                  )
                ],
              ),



              const SizedBox(height: 30,),
              const SizedBox(
                width: 360,
                child: Text('Zájmena samostatná:',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,),),),

              const SizedBox(height: 15,),

              const SizedBox(
                  width: 360,
                  child:
                  Text("Užívají se pro zdůraznění (Toi, tu es tchèque. - Ty jsi Čech), po předložkách (Je ne veux pas y aller sans toi. – Bez tebe tam jít nechci.), po srovnávacích příslovcích (Tu n’es pas comme moi. – Nejsi jako já.).")
                /*
                  RichText(text:const TextSpan(
                   children: [
                     TextSpan(text: "Užívají se pro zdůraznění ("),
                     TextSpan(text: "Toi",style: TextStyle(fontWeight: FontWeight.bold)),
                     TextSpan(text: ", tu es tchèque. - "),
                     TextSpan(text: "Ty",style: TextStyle(fontWeight: FontWeight.bold)),
                     TextSpan(text: " jsi Čech), po předložkách (Je ne veux pas y aller"),
                     TextSpan(text: " sans toi.",style: TextStyle(fontWeight: FontWeight.bold)),
                     TextSpan(text: " – "),
                     TextSpan(text: "Bez tebe tam",style: TextStyle(fontWeight: FontWeight.bold)),
                     TextSpan(text: "jít nechci.), po srovnávacích příslovcích (Tu n’es pas "),
                     TextSpan(text: "comme moi.",style: TextStyle(fontWeight: FontWeight.bold)),
                     TextSpan(text: "– Nejsi "),
                     TextSpan(text: "jako já.).",style: TextStyle(fontWeight: FontWeight.bold)),
                  ]
                  )*/
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,),

              const SizedBox(height: 15,),

              Table(

                border: TableBorder.all(),
                defaultColumnWidth: const FixedColumnWidth(100.0),
                children: [
                  for (var i = 0; i < tabulka3Fj.length; i++) TableRow(
                      children: <Widget>[
                        Text(
                          " " + tabulka3Fj[i],
                          style: const TextStyle(fontSize: 14),
                        ),
                        Text(
                          " " + tabulka3Cj[i],
                          style: const TextStyle(fontSize: 14),
                        ),
                      ]
                  )
                ],
              ),



              const SizedBox(height: 30,),
              const SizedBox(
                width: 360,
                child: Text('Čas přítomný:',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,),),),

              const SizedBox(height: 15,),

              const SizedBox(
                width: 360,
                child: Text("Vyjadřuje děj, který právě probíhá, obvyklý děj, zvyk, obecně platnou skutečnost a blízký budoucí děj.",),),

              const SizedBox(height: 15,),

              const SizedBox(
                width: 360,
                child: Text("Časování sloves être (být), avoir (mít) a faire (dělat):",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,),),),

              const SizedBox(height: 15,),

              const Text("Être:",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,),),

              const SizedBox(height: 15,),

              Table(
                border: TableBorder.symmetric(outside: BorderSide(width: 2, color: Colors.black)),
                defaultColumnWidth: const FixedColumnWidth(180),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(children: <Widget>[SizedBox(height: 10,),SizedBox(height: 10,)],),
                  for (var i = 0; i < tabulka4A.length; i++) TableRow(
                      children: <Widget>[
                        SizedBox(
                          height: 40,
                          child:
                          Text(
                            " " + tabulka4A[i],
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 14),
                          ),),
                        SizedBox(
                          height: 40,
                          child:
                          Text(
                            " " + tabulka4B[i],
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 14),
                          ),),
                      ]
                  )
                ],
              ),

              const SizedBox(height: 15,),

              const Text("Avoir:",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,),),

              const SizedBox(height: 15,),

              Table(
                border: TableBorder.symmetric(outside: BorderSide(width: 2, color: Colors.black)),
                defaultColumnWidth: const FixedColumnWidth(180),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(children: <Widget>[SizedBox(height: 10,),SizedBox(height: 10,)],),
                  for (var i = 0; i < tabulka5A.length; i++) TableRow(
                      children: <Widget>[
                        SizedBox(
                          height: 40,
                          child:
                          Text(
                            " " + tabulka5A[i],
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 14),
                          ),),
                        SizedBox(
                          height: 40,
                          child:
                          Text(
                            " " + tabulka5B[i],
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 14),
                          ),),
                      ]
                  )
                ],
              ),

              const SizedBox(height: 15,),

              const Text("Faire:",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,),),

              const SizedBox(height: 15,),

              Table(
                border: TableBorder.symmetric(outside: BorderSide(width: 2, color: Colors.black)),
                defaultColumnWidth: const FixedColumnWidth(180),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  const TableRow(children: <Widget>[SizedBox(height: 10,),SizedBox(height: 10,)],),
                  for (var i = 0; i < tabulka6A.length; i++) TableRow(
                      children: <Widget>[
                        SizedBox(
                          height: 40,
                          child:
                          Text(
                            " " + tabulka6A[i],
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 14),
                          ),),
                        SizedBox(
                          height: 40,
                          child:
                          Text(
                            " " + tabulka6B[i],
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 14),
                          ),),
                      ]
                  )
                ],
              ),

              const SizedBox(height: 30,),
              const SizedBox(
                width: 360,
                child: Text('Slovesný zápor:',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,),),),

              const SizedBox(height: 15,),

              const SizedBox(
                  width: 360,
                  child:
                  Text("Tvoříme ho pomocí dvojice záporek ne…pas. V přítomném čase se umisťují záporky následovně: Je ne suis pas tchèque. Záporky jsou umístěny před a za slovesem.")
                /*RichText(text:const TextSpan(
                    children: [
                      TextSpan(text: "Tvoříme ho pomocí dvojice záporek ne…pas. V přítomném čase se umisťují záporky následovně: Je "),
                      TextSpan(text: "ne",style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: " suis "),
                      TextSpan(text: "pas",style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: " tchèque. Záporky jsou umístěny před a za slovesem."),
                    ]
                )
                ),*/
              ),
              const SizedBox(
                height: 30,
              )

            ],
          ),
        ),
      ),
    );
  }
}
