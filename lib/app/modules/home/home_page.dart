import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            SizedBox(height: 10.0),
            Text(
              "Quarta, 3 de Junho",
              style: TextStyle(
                  // fontFamily: 'Pacifico',
                fontSize: 22.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 25.0),
            Text(
              "Boa tarde,",
              style: TextStyle(
                  // fontFamily: 'Pacifico',
                fontSize: 20.0,
                color: Colors.white,
                // fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              "Markus",
              style: TextStyle(
                  // fontFamily: 'Pacifico',
                fontSize: 18.0,
                color: Colors.white,
                // height: 2.0,
                fontWeight: FontWeight.bold,
              ),  
            ),
            SizedBox(height: 25.0),
            Text(
              "AWS CODE",
              style: TextStyle(
                  // fontFamily: 'Pacifico',
                fontSize: 16.0,
                color: Colors.white,
                // fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              "Rondon Pacheco 1404, Uberlândia-MG",
              style: TextStyle(
                  // fontFamily: 'Pacifico',
                fontSize: 16.0,
                color: Colors.white,
                // fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              "CNPJ 11111111111111",
              style: TextStyle(
                  // fontFamily: 'Pacifico',
                fontSize: 16.0,
                color: Colors.white,
                // fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              color: Color(0XFF004C7C),
              width: double.infinity,
              // height: 20,
              child: Flex(
                direction: Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 10.0),
                  Text(
                    "Controle Diario",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                  SizedBox(height: 10.0),
                  Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 45.0),
                        width: 200,
                        height: 30,
                        padding: EdgeInsets.only(right: 30.0, top: 5.0),
                        // padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40.0),
                          bottomRight: Radius.circular(40.0)),
                        ),
                        child: Text(
                          "08:00",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0XFF2E6DB3),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.only(right: 30.0,),
                        margin: EdgeInsets.only(left: 20.0, top: 5.0),
                        child: Flex(
                          direction: Axis.horizontal,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.red,
                            ),
                            Text(
                              "1º Entrada",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ),
                    ],
                  ),
                  SizedBox(height: 40.0),
                ]
              ),
            ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'open_qr',
        child: Icon(Icons.camera),
      ),
    );
  }
}
