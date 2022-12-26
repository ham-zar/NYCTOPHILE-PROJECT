import 'package:flutter/material.dart';


class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.orange).copyWith(secondary: Colors.purpleAccent),
        ),
     home: Scaffold(
     appBar: AppBar(
       title:Center(
         child: Text('Login Fail',style: TextStyle(
           fontSize: 20,
           fontWeight: FontWeight.bold,
           fontFamily: 'Times New Roman'
         ),),
       ),
       automaticallyImplyLeading: false,
       leading: new IconButton(
         icon: new Icon(Icons.arrow_back, color: Colors.black),
         onPressed: () => Navigator.of(context).pop(),
       ),
     ),
       body:myerrorpage()
      )
    );

  }
}

class myerrorpage extends StatefulWidget {
  const myerrorpage({Key? key}) : super(key: key);

  @override
  State<myerrorpage> createState() => _myerrorpageState();
}

class _myerrorpageState extends State<myerrorpage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: ListView(
        children: [
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
                      Text('Login Fail',
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
        ],
      ),
    );
  }
}


