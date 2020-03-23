import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

//class CallAndEmailService {
//  void call(String number) => launch('tel:$number');
//  void email(String email) => launch('mailto:$email');
//}
//
//import 'package:get_it/get_it.dart';
//
//GetIt locator = GetIt();
//
//void setupLocator() {
//  locator.registerSingleton(CallAndEmailService());
//}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _launchTel() async {
      const tel = 'tel:1-210-449-5522';
      if (await canLaunch(tel)) {
        await launch(tel);
      } else {
        throw 'Could not launch $tel';
      }
    }

    _launchMailTo() async {
      const mailto = 'mailto:salvadormartinez022693@gmail.com';
      if (await canLaunch(mailto)) {
        await launch(mailto);
      } else {
        throw 'Could not launch $mailto';
      }
    }

    _launchURL() async {
      const url = 'https://salvadorchaos.github.io/my-portfolio';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return MaterialApp(
      title: 'Sal J\'s Digital Business Card',
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(0.0),
          child: AppBar(
            backgroundColor: Colors.black,
            brightness: Brightness.dark,
          ),
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('images/profilepic.jpg'),
                radius: 80.0,
              ),
              Text(
                'Salvador Martinez Jr',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OpenSans',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Web & App Developer',
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              SizedBox(
                child: Divider(
                  color: Colors.grey[50],
                ),
                height: 20.0,
                width: 150.0,
              ),
              FlatButton(
                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                onPressed: _launchTel,
                child: Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.black,
                      ),
                      title: Text(
                        '+1 210-449-5522',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 18.0,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              FlatButton(
                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                onPressed: _launchMailTo,
                child: Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      title: Text(
                        'salvadormartinez022693@gmail.com',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 16.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              FlatButton(
                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                onPressed: _launchURL,
                child: Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.web,
                        color: Colors.black,
                      ),
                      title: Text(
                        'salvadorchaos.github.io/my-portfolio',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 16.5,
                        ),
                      ),
                    ),
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
