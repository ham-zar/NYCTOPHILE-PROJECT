import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hnd36firsttesting/AMS_AP/HomePage.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:hnd36firsttesting/AMS_AP/ErrorPage.dart';

class splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
       colorScheme: ColorScheme.fromSwatch(
         primarySwatch: Colors.orange).copyWith(secondary: Colors.purpleAccent),
      ),
      home: Splash2(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new SecondScreen(),
      title: new Text('FINANCE DEPARTMENT',textScaleFactor: 2,),
      image: new Image.asset('images/logo_transparent.png'),
      loadingText: Text("Hard Work Pays Off!",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15
      ),),
      photoSize: 100.0,
      loaderColor: Colors.orange,
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mysbregister(),

    );
  }
}
class mysbregister extends StatefulWidget {
  const mysbregister({Key? key}) : super(key: key);

  @override
  State<mysbregister> createState() => _mysbregisterState();
}

class _mysbregisterState extends State<mysbregister> {
  @override

  TextEditingController nameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  String name='';
  String password='';

  bool checklogin(String n,String pw){
    if(n=='gusto' && pw=='123'){
      return true;
    }
    else{
      return false;
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:Text("Login Page")),
          backgroundColor: Colors.white,
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
                            Text('Login Form',
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
                        name=value;
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
                  padding: EdgeInsets.all(10),
                  child: Material(
                    elevation: 18,
                    shadowColor: Colors.grey,
                    child: TextField(
                      onChanged: (value){
                        password=value;
                      },
                      // to hide the text .. to get password feature
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          )
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'Password',
                        prefixIcon: Icon(
                          Icons.lock,
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
                        child: Text('Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'Lucida Console',
                          ),
                        ),
                        onPressed: () {

                          if(checklogin(name,password)){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return HomePage();
                            }));
                          }else{
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return ErrorPage();
                            }));
                          }
                        },
                      ),
                    )),
              ],
            )
        )
    );
  }
}
