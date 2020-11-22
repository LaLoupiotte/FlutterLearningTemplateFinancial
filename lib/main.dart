import 'package:flutter/material.dart';
import 'cards.dart';

List groupes = ["VISA", "Mastecard", "VISA", "Mastecard"];
List num_cartes = [
  "1520 1234 9876 1543",
  "1520 5834 9876 1543",
  "1520 1234 9876 1543",
  "1520 5834 9876 1543"
];
List montant = ["3256", "9834", "3256", "9834"];
List couleurs = [
  Colors.blue[200],
  Colors.red[200],
  Colors.green[200],
  Colors.yellow[200]
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Project App",
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Project App"),
        backgroundColor: Colors.black,
      ),
      body: new Material(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.cyanAccent[100], Colors.blue[900]])),
          child: new Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 100),
                child: Center(
                  child: Icon(
                    Icons.attach_money_rounded,
                    size: 200,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  "Finance App",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Text(
                      "Welcome to your new finacial app ! \n You'll find some new features",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w300),
                      textAlign: TextAlign.center)),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(150.0 / 2),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(150.0 / 2),
                    splashColor: Colors.blue,
                    highlightColor: Colors.blue[700],
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Text("Find out here !",
                          style:
                              TextStyle(fontSize: 17, color: Colors.blue[900])),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NewApp()));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewApp extends StatelessWidget {
  @override
  build(BuildContext context) {
    List<Widget> cartes = [];
    for (var i = 0; i < groupes.length; i++) {
      cartes.add(
        CreditCard(
            bank: groupes[i],
            cardNumber: num_cartes[i],
            amountMoney: montant[i],
            color: couleurs[i]),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
        backgroundColor: Colors.black,
        actions: [
          Material(
            color: Colors.transparent,
            child: Padding(
              padding: EdgeInsets.only(right: 30, bottom: 30),
              child: IconButton(
                icon: Icon(
                  Icons.face,
                  size: 40,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyProfile()));
                },
              ),
            ),
          ),
        ],
      ),
      body: Material(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.purple[300], Colors.blue[900]],
            ),
          ),
          child: ListView(
            children: cartes,
          ),
        ),
      ),
    );
  }
}

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My profile"),
        backgroundColor: Colors.black,
      ),
      body: Material(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.orange[300], Colors.red[800]]),
          ),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(40),
                  child: Icon(
                    Icons.face,
                    size: 80,
                  ),
                ),
                Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange[100],
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 50, right: 50, top: 15, bottom: 15),
                    child: Text(
                      "Guilherme",
                      style: TextStyle(fontSize: 32),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange[100],
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 30, right: 30, top: 15, bottom: 15),
                      child: Text(
                        "Miranda Martins",
                        style: TextStyle(fontSize: 32),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange[100],
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 30, right: 30, top: 15, bottom: 15),
                      child: Text(
                        "gui260903@gmail.com",
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
