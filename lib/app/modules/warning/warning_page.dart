import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class WarningPage extends StatefulWidget {
  final String title;
  const WarningPage({Key key, this.title = "Warning"}) : super(key: key);

  @override
  _WarningPageState createState() => _WarningPageState();
}

class _WarningPageState extends State<WarningPage> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avisos"),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.transparent,
        ),
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Flex(
                  direction: Axis.vertical,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.red,
                      backgroundImage: NetworkImage('https://lh3.googleusercontent.com/ykuq3KjWWVgwt9fV1zh1ZzAhXJF6pKV5tbUGH0BZIBBP5yIICcavfO-knvLifR1rv0uBiEnlngw=w640-h400-e365'),
                    ),
                    Text(
                      'Markus',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                    Text(
                      'markus.marques@awscode.com.br',
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 35.0,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
                onTap: () {Modular.to.pushNamed('/home');},
              ),
              ListTile(
                leading: Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 35.0,
                ),
                title: Text(
                  'Avisos',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
               onTap: () {Modular.to.pushNamed('/warning');},
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 35.0,
                ),
                title: Text(
                  'Perfil',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
               onTap: () {Modular.to.pushNamed('/profile');},
              ),
              SizedBox(height: 200.0,),
              Container(
                decoration: BoxDecoration(
                  // color: Color(0XFF004C7C),
                  border: Border(
                    top: BorderSide(width: 1.0, color: Colors.white),
                  ),
                ),
                child: Flex(
                  direction: Axis.vertical,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.exit_to_app,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      title: Text(
                        'Sair',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                      onTap: () {},
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.red,
                      backgroundImage: NetworkImage('https://lh3.googleusercontent.com/ykuq3KjWWVgwt9fV1zh1ZzAhXJF6pKV5tbUGH0BZIBBP5yIICcavfO-knvLifR1rv0uBiEnlngw=w640-h400-e365'),
                    ),
                  ],
                ),
              ),
            ],
          ), // Populate the Drawer in the next step.
        ),
      ),
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                border: Border(
                  top: BorderSide(width: 1.5, color: Colors.red),
                ),
              ),
              // height: 150.0,
              child: Flex(
                direction: Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    width: 250.0,
                    height: 35.0,
                    padding: EdgeInsets.only(left: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40.0),
                          bottomRight: Radius.circular(40.0)),
                    ),
                    child: Flex(
                      direction: Axis.horizontal,
                      children: <Widget>[
                        Icon(Icons.notifications, color: Colors.red),
                        Text(
                          "sadasfd",
                          style: TextStyle(color: Colors.red, fontSize: 16.0),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 8.0),
                    child: Text(
                        "aoghildzfghfildghreauilghdflhlbhldfubhxiludbh sfuhsidfu hsildguhdfliguhdfilug hifudghfdiçugh",
                        style: TextStyle(color: Colors.white, fontSize: 16.0)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                border: Border(
                  top: BorderSide(width: 1.5, color: Colors.red),
                ),
              ),
              // height: 150.0,
              child: Flex(
                direction: Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    width: 250.0,
                    height: 35.0,
                    padding: EdgeInsets.only(left: 5.0),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      boxShadow: [
                        BoxShadow(color: Colors.red, spreadRadius: 1),
                      ],
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40.0),
                          bottomRight: Radius.circular(40.0)),
                    ),
                    child: Flex(
                      direction: Axis.horizontal,
                      children: <Widget>[
                        Icon(Icons.person, color: Colors.white),
                        Text(
                          "sadasfd",
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 8.0),
                    child: Text(
                        "aoghildzfghfildghreauilghdflhlbhldfubhxiludbh sfuhsiilghdflhlbhldfubhxiludbh sfuhsiilghdflhlbhldfubhxiludbh sfuhsiilghdflhlbhldfubhxiludbh sfuhsidfu hsildguhdfliguhdfilug hifudghfdiçugh",
                        style: TextStyle(color: Colors.white, fontSize: 16.0)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0XFFA61B31),
              ),
              // height: 150.0,
              child: Flex(
                direction: Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    width: 250.0,
                    height: 35.0,
                    padding: EdgeInsets.only(left: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40.0),
                          bottomRight: Radius.circular(40.0)),
                    ),
                    child: Flex(
                      direction: Axis.horizontal,
                      children: <Widget>[
                        // Icon(Icons.person, color: Colors.white),
                        Text(
                          "sadasfd",
                          style: TextStyle(
                              color: Color(0XFF2E6DB3), fontSize: 16.0),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 8.0),
                    child: Text(
                        "aoghildzfghfildghreauilghdflhlbhldfubhxiludbh sfuhsiilghdflhlbhldfubhxiludbh sfuhsiilghdflhlbhldfubhxiludbh sfuhsiilghdflhlbhldfubhxiludbh sfuhsidfu hsildguhdfliguhdfilug hifudghfdiçugh",
                        style: TextStyle(color: Colors.white, fontSize: 16.0)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'open_qr',
        child: Icon(Icons.camera),
      ),
    );
  }
}
