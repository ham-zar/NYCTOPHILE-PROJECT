import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hnd36firsttesting/AMS_AP/RegisterDart.dart';
import 'package:hnd36firsttesting/AMS_AP/Doutput.dart';
import 'package:hnd36firsttesting/AMS_AP/Serarch.dart';
import 'package:hnd36firsttesting/AMS_AP/employeecalculation.dart';
import 'package:hnd36firsttesting/AMS_AP/salarycalculation.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange).copyWith(secondary: Colors.purpleAccent),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('NYCTOPHILE Company'),
        ),
         body: myHome(),
         )
      );
  }
}

class myHome extends StatefulWidget {
  const myHome({Key? key}) : super(key: key);

  @override
  State<myHome> createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
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
            padding: EdgeInsets.all(10),

            child: SingleChildScrollView(
              child: Material(
                elevation: 18,
                shadowColor: Colors.grey,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context)
                            {
                              return RegD();
                            }));
                          });
                        },
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(image: AssetImage('images/add.jpg'),
                                height: 100,
                                width: 50,
                              ),
                              Text('Add Employee',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),

            child: SingleChildScrollView(
              child: Material(
                elevation: 18,
                shadowColor: Colors.grey,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context)
                            {
                              return Search();
                            }));
                          });
                        },
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(image: AssetImage('images/sear.jpg'),
                                height: 100,
                                width: 50,
                              ),
                              Text('Employee Search',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),

            child: SingleChildScrollView(
              child: Material(
                elevation: 18,
                shadowColor: Colors.grey,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context)
                            {
                              return Doutput();
                            }));
                          });
                        },
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(image: AssetImage('images/elist.png'),
                                height: 100,
                                width: 50,
                              ),
                              Text('Employee List',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),

            child: SingleChildScrollView(
              child: Material(
                elevation: 18,
                shadowColor: Colors.grey,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context)
                            {
                              return calculateSalary();
                            }));
                          });
                        },
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(image: AssetImage('images/salary.jpg'),
                                height: 100,
                                width: 50,
                              ),
                              Text('Employee Salary',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),

            child: SingleChildScrollView(
              child: Material(
                elevation: 18,
                shadowColor: Colors.grey,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context)
                            {
                              return employeecalculation();
                            }));
                          });
                        },
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(image: AssetImage('images/edetail.png'),
                                height: 100,
                                width: 50,
                              ),
                              Text('Total Employee',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );

  }
}