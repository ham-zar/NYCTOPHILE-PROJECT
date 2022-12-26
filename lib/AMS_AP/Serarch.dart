import 'package:flutter/material.dart';

import 'package:hnd36firsttesting/AMS_AP/MyDataAccess.dart';

import 'HomePage.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.orange).copyWith(secondary: Colors.purpleAccent),
        ),
        home: searhlogin()
    );
  }
}

class searhlogin extends StatefulWidget {
  const searhlogin({Key? key}) : super(key: key);

  @override
  State<searhlogin> createState() => _searhloginState();
}

class _searhloginState extends State<searhlogin> {

String name = '';
bool answer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text('Serarch Employee Data')),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                  child: Image(
                    width: 100,
                    height: 200,
                    image: AssetImage('images/logo_transparent.png'),
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Material(
                        elevation: 18,
                        shadowColor: Colors.grey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 10,
                              height: 60,
                            ),
                            Text('Search Form',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Lucida Console',
                                  fontSize: 20,
                                  color: Colors.black,
                                )
                            ),
                          ],
                        )
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Material(
                    elevation: 18,
                    shadowColor: Colors.grey,
                    child: TextField(
                      onChanged: (value){
                        name = value;
                      },

                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'User Name',
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                      ),

                    ),
                  ),
                ),

                Container(
                    height: 60,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Material(
                      elevation: 18,
                      shadowColor: Colors.grey,
                      child: ElevatedButton(
                        child: Text('Search',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lucida Console',
                              fontSize: 15,
                              color: Colors.black,
                            )
                        ),
                        onPressed: () {
                          setState(() {
                            MyDataAccess da = new MyDataAccess();
                            answer= da.searchData(name);
                          });

                        },
                      ),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                    child: Material(
                        elevation: 18,
                        shadowColor: Colors.grey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 10,
                              height: 60,
                            ),
                            Text((answer==true)?'Found $name' : 'Not Found $name',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Lucida Console',
                                  fontSize: 25,
                                  color: Colors.deepPurple,
                                )
                            ),
                          ],
                        )
                    )
                ),
                Container(
                  height: 60,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Material(
                    elevation: 18,
                    shadowColor: Colors.grey,
                    child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)
                          {
                            return HomePage();
                          }));

                        });

                      },
                      child: Text('Back To Home',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Lucida Console',
                            fontSize: 15,
                            color: Colors.black,
                          )
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}