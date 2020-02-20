import 'package:flutter/material.dart';

class SearchList extends StatefulWidget {
  SearchList({ Key key }) : super(key: key);
  @override
  _SearchListState createState() => new _SearchListState();

}

class _SearchListState extends State<SearchList>
{
  Widget appBarTitle = new Text("Mandinka English Dictionary", style: new TextStyle(color: Colors.white),);
  Icon actionIcon = new Icon(Icons.search, color: Colors.white,);
  final key = new GlobalKey<ScaffoldState>();
  final TextEditingController _searchQuery = new TextEditingController();
  List<String> _list;
  bool _IsSearching;
  String _searchText = "";

  _SearchListState() {
    _searchQuery.addListener(() {
      if (_searchQuery.text.isEmpty) {
        setState(() {
          _IsSearching = false;
          _searchText = "";
          
        });
      }
      else {
        setState(() {
          _IsSearching = true;
          _searchText = _searchQuery.text;
          
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _IsSearching = false;
    init();

  }

  void init() {
    _list = List();
    _list.add("Him or It -> a (n)");
    _list.add("He, She, It or Her -> a (spn)\n A be looring a daala \n Translation -> He is standing near him");
    _list.add("Culture, Custom, Tradition -> aadoo (n) \n Jalan batoo manke alila adoo \n Translation -> idol worshiping is not your culture");
    _list.add("Aalii (n) -> man's name");
    _list.add("Aamadu (n) -> man's name \n  Aamadu le ti \n Translation -> My name is Aamadu");
    _list.add("Prophet Aaron \n -> Aaruuna (n)");
    _list.add("Ace, Ace of playing cards \n-> aasoo (n) \n aasoo fula lesoto \nTransalation -> I have two aces");
    _list.add("Thank you -> abaraka(adj) \n Abarakabaake \n Translation -> Thank you very much");
    _list.add("Abi(n) name of a lady \n short form for Abiibatu, Abisatu, Abiyatu");
    _list.add("Ok -> aca (n)");
    _list.add("Go on, Go away -> aca(int)");
    _list.add("Human being -> adamadiyo (n)\n Ite manke adamadiyo ti \n Translation -> You are not a human being");
    _list.add("Address -> adereesoo (n) \n Faatu aadereesoo diinna \n Translation -> please give me faatu's addres");
    _list.add("Quranic scholar -> Afay (n)");
    _list.add("Female pilgrim -> Aja (n)");
    _list.add("Female pilgrim -> Ajaratu (n)");
    _list.add("Bean cake -> Akaraa (n) \n Akara diyaata baake \n Translation -> Akara is very nice");
    _list.add("Creole people -> Akuwo (n) \n -> a tribe that descended from returned slaves and speak Creole");
    _list.add("God Almighty -> Ala (n) \n name of Almighty God in Islam");
    _list.add("Godliness, fearing of God -> Alañaasilayo (n) \n Alañaasilayo maμñoμsoto \n Translation -> Godliness is second to none");
    _list.add("Male pilgrim -> Alaaji (n)");
    _list.add("Worshipping -> Alabatoo (vn) \n Alabatoo beteyaata baake \n Translation -> Worshipping is very good");
    _list.add("To worship -> Alabatu (v)");
    _list.add("Worshipper -> Alabatulaa (n) \n Ibrahima mu Alabatulaa baa le ti nuμ \n translation -> Abraham was a real worshipper of God");
    _list.add("Sunday -> Alahadoo (n) \n Bii mu alahadoo le ti \n Translation -> Today is Sunday");
    _list.add("Blasphemy, sinning against God -> Alakutoo (vn)\n Alakutoo maμbeteyaa \n Translation -> Blasphemy is not good ");
    _list.add("God's creation -> Alaladaaroo (n)");
    _list.add("Holy man -> Alalamoobaa (n) ");
    _list.add("Naturaly circumcised -> alalayansiyo(n)");
    _list.add("Praying mantis, God's horse -> alalasuwoo (n)");
    _list.add("One ignorant of God -> Alalonbaloo (n) ");
    _list.add("To find -> alamaani (v)");
    _list.add("Fine -> alamaanoo (n)");
    _list.add("May we -> Alamaaya (n)");
    _list.add("To offer, to permit one'sdaughter marry a man without charging anything -> alamanii (v)");
    _list.add("Free offering, free offerring of one's daughter to a maninmarriage");
    _list.add("Next year -> alammaabee (n)");
    _list.add("To rely on God -> alamuta (v)");
    _list.add("Evening prayer time -> alansaroo(n)");
    _list.add("God bless me -> Alanso (n)");
    _list.add("You -> ali (spn)");
    _list.add("see -> ali niy sene (n)");
    _list.add("ali saama (n) -> plural for i saama");
    _list.add("Calamity, disaster, plague, epidemic -> alibalaa (n)");
    _list.add("Respected person, leader, elder, guardian -> alifaa (n)");
    _list.add("Ancestors -> alifaa-foloolu(n)");
    _list.add("To curse -> alifaari (v)");
    _list.add("Quran's 1st chapter -> alifaatiyo (n)");
    _list.add("Leadership, guardianship, eldership -> alifaayaa (n)");
    _list.add("Condition, state, position, circumstance -> alihaaloo (n)");
    _list.add("Praise be to God, thanks to God,\n borrowed fromthe Holy Quran, mentioned when something is accomplished \n -> Alihamudu lillaay (n)");
    _list.add("Space, cosmos, weather,all space above earth \n -> alihawaa (n) ");
    _list.add("Chief of a village -> Alikaaloo (n)");
    _list.add("Here after, next world -> alikiyaama (n)");
    _list.add("Last day -> alikiyaama looluyo (n)");
    _list.add("Prayer recitation -> alikunuutoo (n)");
    _list.add("Swearing by the Quran -> alikuraanitakoo (vn)");
    _list.add("Holy Quran -> Alikuraanoo(n)");
    _list.add("To swear by the Quran -> alikuraanootaki (v)");
    _list.add("Your (plural) -> alila(pa)");
    _list.add("Imam, also used as a man's name -> alimaame (n)");
    _list.add("Imam, also used as man's name -> alimaamoo (n)");
    _list.add("Lunar calender -> alimanaakoo (n)");
    _list.add("Match, matches -> alimeetoo (n)");
    _list.add("Cupboard -> alimooroo(n)");
    _list.add("you (emphatic plural) -> alitelu (n)");
    _list.add("yours (plural emphatic) -> alitolutaa (pospn)");
    _list.add("Orphan, both parents or father dead -> aliyatiimoo (n)");
    _list.add("Big sack -> ambalaasoo (n)");
    _list.add("Ambulance -> ambulansoo (n)");
    _list.add("Apprentice, trainee -> aparantee (n)");
    _list.add("Thursday -> Araamisaluyo (n)");
    _list.add("Wednesday -> Arabaluyo (n)");
    _list.add("Paradise -> Arajana(n");
    _list.add("Friday -> Arajumoo(n)");
    _list.add("Safe -> arankeesoo (n)");
    _list.add("May be -> ase ke (n)");
    _list.add("acid for battery -> asiboo(n)");
    _list.add("Accident -> asidayo (n) ");
    _list.add("Uniformity -> asobii (n)");
    _list.add("His, hers -> ataa (n)");
    _list.add("Take it easy -> ataakuu (adj)");
    _list.add("Green tea, tea drinking -> ataayaa (n)");
    _list.add("Him, it, her, (emphatic) -> ate (op)");
    _list.add("His, her, its -> atela (pa)");
    _list.add("His, hers, its -> atetaa (pospn)");
    _list.add("Eve,name of a lady -> Awa (n)");
    _list.add("Eye shadow -> ayisadoo (n)");
    _list.add("Surename -> Ba(n)");
    _list.add("large, big, great -> baa(adj)");
    _list.add("father, ocean, termite ant -> baaba (n)");
    _list.add("Termite queen, queen of England -> baabaa mansoo (n)");
    _list.add("Termite dust -> baabaabankoo (n)");
    _list.add("coast, seaside -> baabaloo (n)");
    _list.add("swordfish -> baabemdayo (n)");
    _list.add("equally -> baabinooto (adv)");
    _list.add("to cut hair,this is only for the head -> baabu(v)");
    _list.add("Tributary -> baabuloo(n)");
    _list.add("Barbed wire -> baabuwayaa (n)");
    _list.add("Beach, seaside -> baadaa (n)");
    _list.add("River bank -> baadaala (n)");
    _list.add("kind of fish -> baadabandiyo(n)");
    _list.add("coast, seaside -> baadandayo(n)");
    _list.add("Cursed person -> baadankatoo (n)");
    _list.add("seahunter, fisherman -> baadannoo (n)");
    _list.add("burial, grave -> baadannoo (n)");
    _list.add("to bury -> baadee (v)");
    _list.add("burial -> baadeedulaa(n)");
    _list.add("cemetry -> baadeekoo (n)");
    _list.add("coast, seaside -> baadendeyo (n)");
    _list.add("burial, grave -> baadewo(n)");
    _list.add("kins,relatives -> baadimmaalu(n)");
    _list.add("nepotism -> baadinfaasaa (n)");
    _list.add("bad relative -> baadinjawoo (n)");
    _list.add("hatred, hatred -> baadinjawuyaa (n)");
    _list.add("kin -> baadiy (n)");
    _list.add("kin, mother's child -> baadiyo (n)");
    _list.add("kinship -> baadiyyaa(n)");
    _list.add("high tide -> baafaa (n)");
    _list.add("river -> baafatoo(n)");
    _list.add("low tide -> baajaa (n)");
    _list.add("seaside, sideofriver -> baajenjeyo(n) ");
    _list.add("surname -> Baaji (n)");
    _list.add("");
    _list.add("");
    _list.add("");
    _list.add("");
    _list.add("");
    _list.add("");
    _list.add("");
    _list.add("");
    _list.add("");
    _list.add("");
    _list.add("");
    _list.add("");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: key,
      appBar: buildBar(context),
      body: new ListView(
        padding: new EdgeInsets.symmetric(vertical: 8.0),
        children: _IsSearching ? _buildSearchList() : _buildList(),
      ),
    );
  }

  List<ChildItem> _buildList() {
    return _list.map((contact) => new ChildItem(contact)).toList();
  }

  List<ChildItem> _buildSearchList() {
    if (_searchText.isEmpty) {
      return _list.map((contact) => new ChildItem(contact))
          .toList();
    }
    else {
      List<String> _searchList = List();
      for (int i = 0; i < _list.length; i++) {
        String  name = _list.elementAt(i);
        if (name.toLowerCase().contains(_searchText.toLowerCase())) {
          _searchList.add(name);
        }
      }
      return _searchList.map((contact) => new ChildItem(contact))
          .toList();
    }
  }

  Widget buildBar(BuildContext context) {
    return new AppBar(
        centerTitle: true,
        title: appBarTitle,
        actions: <Widget>[
          new IconButton(icon: actionIcon, onPressed: () {
            setState(() {
              if (this.actionIcon.icon == Icons.search) {
                this.actionIcon = new Icon(Icons.close, color: Colors.white,);
                this.appBarTitle = new TextField(
                  controller: _searchQuery,
                  style: new TextStyle(
                    color: Colors.white,

                  ),
                  decoration: new InputDecoration(
                      prefixIcon: new Icon(Icons.search, color: Colors.white),
                      hintText: "Search...",
                      hintStyle: new TextStyle(color: Colors.white)
                  ),
                );
                _handleSearchStart();
              }
              else {
                _handleSearchEnd();
              }
            });
          },),
        ]
    );
  }

  void _handleSearchStart() {
    setState(() {
      _IsSearching = true;
    });
  }

  void _handleSearchEnd() {
    setState(() {
      this.actionIcon = new Icon(Icons.search, color: Colors.white,);
      this.appBarTitle =
      new Text("Mandinka English Dictionary", style: new TextStyle(color: Colors.white),);
      _IsSearching = false;
      _searchQuery.clear();
    });
  }

}

class ChildItem extends StatelessWidget {
  final String name;
  ChildItem(this.name);
  @override
  Widget build(BuildContext context) {
    return new ListTile(title: new Text(this.name));
  }

}