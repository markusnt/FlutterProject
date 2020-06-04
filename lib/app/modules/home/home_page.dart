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
              // SizedBox(height: 25.0),
              Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Boa tarde, ",
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 22.0,
                      color: Colors.white,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Markus",
                    style: TextStyle(
                      // fontFamily: 'Pacifico',
                      fontSize: 22.0,
                      color: Colors.white,
                      // height: 2.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20.0),

              Container(
                color: Color(0XFF004C7C),
                width: double.infinity,
                // height: 20,
                child: Flex(
                    direction: Axis.vertical,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 30.0),
                      Container(
                        // mainAxisSize: MainAxisSize.max,
                        // margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
                        child: Text(
                          "Quarta, 3 de Junho",
                          style: TextStyle(
                            // fontFamily: Th,,
                            fontSize: 22.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Controle Diario",
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                          ),
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
                              // padding: EdgeInsets.only(right: 30.0,),
                              margin: EdgeInsets.only(left: 20.0, top: 5.0),
                              child: Flex(
                                direction: Axis.horizontal,
                                children: <Widget>[
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.red,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0, bottom: 10.0),
                                    child: Text(
                                      "1º Entrada",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              )),
                        ],
                      ),
                      Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 45.0),
                                width: 200,
                                height: 30,
                                padding: EdgeInsets.only(left: 30.0, top: 5.0),
                                // padding: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40.0),
                                      bottomLeft: Radius.circular(40.0)),
                                ),
                                child: Text(
                                  "12:00",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Color(0XFF2E6DB3),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                  // padding: EdgeInsets.only(right: 30.0,),
                                  margin: EdgeInsets.only(left: 50.0, top: 5.0),
                                  child: Flex(
                                    direction: Axis.horizontal,
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                        child: Text(
                                          "1º Saída",
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.red,
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 40.0),
                    ]),
              ),
              SizedBox(height: 20.0),
              Flex(
                direction: Axis.vertical,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[],
              ),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'open_qr',
        child: Icon(Icons.camera),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
          child: Column(
            children: <Widget>[
              Text(
                "AWS CODE",
                style: TextStyle(
                  // fontFamily: 'Pacifico',
                  fontSize: 16.0,
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "Rondon Pacheco 1404, Uberlândia-MG",
                style: TextStyle(
                  // fontFamily: 'Pacifico',
                  fontSize: 16.0,
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "CNPJ 11111111111111",
                style: TextStyle(
                  // fontFamily: 'Pacifico',
                  fontSize: 16.0,
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        color: Theme.of(context).backgroundColor,
      ),
    );
  }
}
