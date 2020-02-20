

import 'package:fancy_on_boarding/fancy_on_boarding.dart';

import 'package:mandinka2/conversation.dart';

import 'package:mandinka2/introducing_someone.dart';
import 'package:flutter/material.dart';
import 'package:mandinka2/search_list.dart';
import 'package:mandinka2/read_pdf.dart';
import 'package:mandinka2/read_dictionnary.dart';
import 'package:mandinka2/read_mp3.dart';
import 'package:mandinka2/read_mp31.dart';
import 'package:mandinka2/read_mp32.dart';
import 'package:mandinka2/leavetaking.dart';
import 'package:mandinka2/personalinformation.dart';
import 'package:mandinka2/shopping.dart';
import 'package:mandinka2/tenseandverb.dart';
import 'package:mandinka2/transportation.dart';
import 'package:mandinka2/numbers.dart';
import 'package:mandinka2/adjectives.dart';
import 'package:mandinka2/weather.dart';
import 'package:mandinka2/weatherwords.dart';
import 'package:mandinka2/tailoring.dart';
import 'package:mandinka2/tailoringvocab.dart';
import 'package:mandinka2/generalcomplements.dart';
import 'package:mandinka2/familyandfriends.dart';
import 'package:mandinka2/commenphrases.dart';
import 'package:mandinka2/questionandrespond.dart';
import 'package:mandinka2/noticingsick.dart';
import 'package:mandinka2/location.dart';
import 'package:mandinka2/needs.dart';
import 'package:mandinka2/sympathyandprayers.dart';








  void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  final appTitle = 'ENGLISH - MANDINKA';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: Text(title)),
      
      body: FancyOnBoarding(
        doneButtonText: "SIDEBAR PLEASE",
        skipButtonText: "pepephilippe287@gmail.com",
        pageList: pageList,
        onDoneButtonPressed: () =>
            Navigator.of(context).pushReplacementNamed('/drawer'),
        onSkipButtonPressed: () =>
            Navigator.of(context).pushReplacementNamed('/Drawer'),
      ),/* Center(
        
          child: Center(child: Text("RESUME: \nLe mandinka est une langue mandingue et une variante\n du mandingue parlée en Guinée au Sénégal, en Gambie\n et en Guinée-Bissau. D’autres variantes du mandingue\n sont parlée en Côte d’Ivoire, au Burkina Faso, au Liberia,\n en Guinée, au Mali, en Sierra Leone, en Gambie et en Guinée-Bissau.Le mandingue fait partie des langues mandées, elles-mêmes rattachées aux langues\n nigéro-congolaises. On l’appelle aussi manding, mandingo, mandinka, mandekinhninkan, mandinque, mande et socé.\nLe mandingue utilise tantôt l'alphabet latin tantôt\n l'alphabet arabe, l'utilisation de ce dernier étant plus traditionnelle.\nMais il existe aussi depuis 1949 une nouvelle écriture spécifique aux langues mandées,\n le n'ko, développée par le linguiste guinéen Souleymane Kante.",style: TextStyle(fontWeight: FontWeight.bold),
      ),
      
      ),
      
      ),*/
      
      
    

      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Mandinka', style: TextStyle(fontSize: 45.0, color: Colors.black12, fontWeight: FontWeight.bold)),
              
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            ListTile(
              title: Text('Search in Dictionary',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                SearchList();
                // Update the state of the app
                // ...
                // Then close the drawer
               // Navigator.pop(context);
               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchList()),
            );
              },
            ),
            ListTile(
              title: Text('Back to Introduction',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('GRAMMAR PDF View',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                SearchList();
                // Update the state of the app
                // ...
                // Then close the drawer
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MonApp()),
            );
              },
            ),
            ListTile(
              title: Text('Dictionnary PDF View',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                SearchList();
                // Update the state of the app
                // ...
                // Then close the drawer
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MonoApp()),
            );
              },
            ),
            ListTile(
              title: Text('Listen and learn Greetings',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                SearchList();
                // Update the state of the app
                // ...
                // Then close the drawer
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalAudio()),
            );
              },
            ),
            ListTile(
              title: Text('Listen and learn Morning Greetings',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                SearchList();
                // Update the state of the app
                // ...
                // Then close the drawer
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalAudio1()),
            );
              },
            ),
            ListTile(
              title: Text('Listen and learn Evening Greetings',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                SearchList();
                // Update the state of the app
                // ...
                // Then close the drawer
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalAudio2()),
            );
              },
            ),
            ListTile(
              title: Text('Listen and learn Leave Taking',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                SearchList();
                // Update the state of the app
                // ...
                // Then close the drawer
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalAudio3()),
            );
              },
            ),
             ListTile(
              title: Text('Listen and learn Personal Identification',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                SearchList();
                // Update the state of the app
                // ...
                // Then close the drawer
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalAudio4()),
            );
              },
            ),
            ListTile(
              title: Text('Listen How to Introduce Someone',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                SearchList();
                // Update the state of the app
                // ...
                // Then close the drawer
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalAudio5()),
            );
              },
            ),
            ListTile(
              title: Text('Listen on Shopping',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                SearchList();
                // Update the state of the app
                // ...
                // Then close the drawer
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalAudio6()),
            );
              },
            ),
            ListTile(
              title: Text('Listen to Conversations',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                SearchList();
                // Update the state of the app
                // ...
                // Then close the drawer
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalAudio7()),
            );
              },
            ),
            ListTile(
              title: Text('Listen to Tenses and Verbs',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                SearchList();
                // Update the state of the app
                // ...
                // Then close the drawer
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalAudio8()),
            );
              },
            ),
            ListTile(
              title: Text('Listening: Transportations',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                SearchList();
                // Update the state of the app
                // ...
                // Then close the drawer
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalAudio9()),
            );
              },
            ),
            ListTile(
              title: Text('Listening: NUMBERS',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                SearchList();
                // Update the state of the app
                // ...
                // Then close the drawer
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalAudio10()),
            );
              },
            ),
            ListTile(
              title: Text('Listening: ADJECTIVES',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                SearchList();
                // Update the state of the app
                // ...
                // Then close the drawer
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalAudio11()),
            );
              },
            ),
            ListTile(
              title: Text('Listening: WEATHER',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                SearchList();
                // Update the state of the app
                // ...
                // Then close the drawer
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalAudio12()),
            );
              },
            ),
            ListTile(
              title: Text('Listening: WEATHER WORDS',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                SearchList();
                // Update the state of the app
                // ...
                // Then close the drawer
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalAudio13()),
            );
              },
            ),
            ListTile(
              title: Text('Listening: Tailoring',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                SearchList();
                // Update the state of the app
                // ...
                // Then close the drawer
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalAudio14()),
            );
              },
            ),
            ListTile(
              title: Text('Listening: Tailoring Vocabulary',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                SearchList();
                // Update the state of the app
                // ...
                // Then close the drawer
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalAudio15()),
            );
              },
            ),
            ListTile(
              title: Text('Listening: General Complements',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                SearchList();
                // Update the state of the app
                // ...
                // Then close the drawer
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalAudio16()),
            );
              },
            ),
            ListTile(
              title: Text('Listening: Family and Friends',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                SearchList();
                // Update the state of the app
                // ...
                // Then close the drawer
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalAudio17()),
            );
              },
            ),
            ListTile(
              title: Text('Listening: Common Phrases',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                SearchList();
                // Update the state of the app
                // ...
                // Then close the drawer
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalAudio20()),
            );
              },
            ),
            ListTile(
              title: Text('Listening: Questions and Responding',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                SearchList();
                // Update the state of the app
                // ...
                // Then close the drawer
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalAudio19()),
            );
              },
            ),
            ListTile(
              title: Text('Listening: Noticing Sickness',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                SearchList();
                // Update the state of the app
                // ...
                // Then close the drawer
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalAudio21()),
            );
              },
            ),
            ListTile(
              title: Text('Listening: LOCATION',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                SearchList();
                // Update the state of the app
                // ...
                // Then close the drawer
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalAudio22()),
            );
              },
            ),
            ListTile(
              title: Text('Listening: EXPRESSING NEEDS',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                SearchList();
                // Update the state of the app
                // ...
                // Then close the drawer
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalAudio23()),
            );
              },
            ),
            ListTile(
              title: Text('Listening: EXPRESSING SYMPATHY/PRAYERS',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                SearchList();
                // Update the state of the app
                // ...
                // Then close the drawer
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalAudio25()),
            );
              },
            ),
            
          ],
        ),
      ),
      
    /* persistentFooterButtons: <Widget>[
          IconButton(
            icon: Icon(Icons.add), onPressed: () {},
          ),
           IconButton(
            icon: Icon(Icons.alarm), onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.people), onPressed: () {},
          ),
        ],
         floatingActionButton: new FloatingActionButton(
        onPressed: (){
         
        },
        child: new Icon(Icons.add),
      ),*/
    
    );
    
      
  
  }
}







final pageList = [
    PageModel(
        color: const Color(0xFF678FB4),
        heroAssetPath: 'assets/img/splash.png',
        title: Text('INTRODUCTION',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.white,
              fontSize: 34.0,
            )),
        body: Text('Le mandinka est une langue mandingue et une variante\n du mandingue parlée en Guinée au Sénégal, en Gambie\n et en Guinée-Bissau',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            )),
        iconAssetPath: 'assets/img/splash.png'
        ),
    PageModel(
        color: const Color(0xFF65B0B4),
        heroAssetPath: 'assets/img/senegal.png',
        title: Text('MANDINKA',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.white,
              fontSize: 34.0,
            )),
        body: Text(
            'D’autres variantes du mandingue\n sont parlée en Côte d’Ivoire, au Burkina Faso, au Liberia,\n en Guinée, au Mali, en Sierra Leone, en Gambie et en Guinée-Bissau',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            )),
        iconAssetPath: 'assets/img/senegal.png'),
    PageModel(
      color: const Color(0xFF9B90BC),
      heroAssetPath: 'assets/img/guinee.png',
      title: Text('MANDINKA',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.white,
            fontSize: 34.0,
          )),
      body: Text('Le mandingue fait partie des langues mandées, elles-mêmes rattachées aux langues\n nigéro-congolaises. On l’appelle aussi manding, mandingo, mandinka, mandekinhninkan, mandinque, mande et socé.\n Le mandingue utilise tantôt l alphabet latin tantôt\n l alphabet arabe,',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          )),
      iconAssetPath: 'assets/img/guinee.png',
    ),
    PageModel(
      color: const Color(0xFFbcb190),
      heroAssetPath: 'assets/img/guinee0.png',
      title: Text('INSTRUCTIONS',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.white,
            fontSize: 34.0,
          )),
      body: Text('Pour Apprendre Le Mandinka à laide des PDF et MP3, clickez le sidebar et choississez, bonne dégustation!!!',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          )),
      iconAssetPath: 'assets/img/guinee0.png',
    ),
];