import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProfilePage extends StatefulWidget {
  final String title;
  const ProfilePage({Key key, this.title = "Profile"}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
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
                onTap: () {
                  Modular.to.pushNamed('/home');
                },
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
                onTap: () {
                  Modular.to.pushNamed('/warning');
                },
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
                onTap: () {
                  Modular.to.pushNamed('/profile');
                },
              ),
              SizedBox(
                height: 200.0,
              ),
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
              SizedBox(
                height: 10.0,
                width: double.infinity,
              ),
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.red,
                backgroundImage: NetworkImage('https://lh3.googleusercontent.com/ykuq3KjWWVgwt9fV1zh1ZzAhXJF6pKV5tbUGH0BZIBBP5yIICcavfO-knvLifR1rv0uBiEnlngw=w640-h400-e365'),
              ),
              SizedBox(height: 20.0),
              Text(
                'Markus',
                style: TextStyle(color: Colors.white, fontSize: 22.0),
              ),
              SizedBox(height: 20.0),
              Container(
                  color: Theme.of(context).primaryColor,
                  // width: double.infinity,
                  child: Flex(
                    direction: Axis.vertical,
                    children: <Widget>[
                      SizedBox(height: 20.0),
                      Container(
                        // width: double.infinity,
                        // color: Colors.green,
                        child: Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              // color: Colors.blue,
                              width: 150.0,
                              child: Text(
                                'Cidade',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                              ),
                            ),
                            Container(
                              // color: Colors.red,
                              width: 150.0,
                              child: Text(
                                'Uberlândia-MG',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Colors.white24,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        child: Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              // color: Colors.blue,
                              width: 150.0,
                              child: Text(
                                'Empresa',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                              ),
                            ),
                            Container(
                              // color: Colors.red,
                              width: 150.0,
                              child: Text(
                                'AWS CODE',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Colors.white24,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        child: Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              // color: Colors.blue,
                              width: 150.0,
                              child: Text(
                                'Cargo',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                              ),
                            ),
                            Container(
                              // color: Colors.red,
                              width: 150.0,
                              child: Text(
                                'Desenvolvedor',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Colors.white24,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        child: Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              // color: Colors.blue,
                              width: 150.0,
                              child: Text(
                                'CPF',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                              ),
                            ),
                            Container(
                              // color: Colors.red,
                              width: 150.0,
                              child: Text(
                                '000.000.000-00',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Colors.white24,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        child: Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              // color: Colors.blue,
                              width: 150.0,
                              child: Text(
                                'Telefone',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                              ),
                            ),
                            Container(
                              // color: Colors.red,
                              width: 150.0,
                              child: Text(
                                '(00) 0 0000-0000',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Colors.white24,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        child: Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              // color: Colors.blue,
                              width: 150.0,
                              child: Text(
                                'Data de admissão',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                              ),
                            ),
                            Container(
                              // color: Colors.red,
                              width: 150.0,
                              child: Text(
                                '00/00/0000',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Colors.white24,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0),
                    ],
                  )),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'open_qr',
        child: Icon(Icons.camera),
      ),
    );
  }
}
