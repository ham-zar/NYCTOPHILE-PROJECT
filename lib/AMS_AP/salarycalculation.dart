import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hnd36firsttesting/AMS_AP/MyDataAccess.dart';
import 'package:hnd36firsttesting/AMS_AP/HomePage.dart';

class CalculateSalary extends StatelessWidget {
  const CalculateSalary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          fontFamily: 'Times New Roman',
          colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.orange).copyWith(secondary: Colors.deepPurple),

        ),
        home: calculateSalary()
    );;
  }
}
enum MyGirl { flora, laura }
enum MyGirl2 { flora, laura }
class calculateSalary extends StatefulWidget {
  const calculateSalary({Key? key}) : super(key: key);

  @override
  State<calculateSalary> createState() => _calculateSalaryState();
}

class _calculateSalaryState extends State<calculateSalary> {
  MyGirl? _girl = MyGirl.flora;
  MyGirl2? _girl2 = MyGirl2.flora;
  TextEditingController syearcontroller = new TextEditingController();

  String name='';
  String ans = '';
  String syear = '';
  String leave = 'leave';
  String late = 'late';

  bool res = false;

  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Salary Calculation')),
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
                        fillColor: Colors.white38,
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

                  child: Column(
                    children: [
                      Material(
                        elevation: 18,
                        shadowColor: Colors.grey,
                        child: Theme(
                          data: ThemeData.dark(),
                          child: ListTile(
                            title: const Text('Not Leave',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),),
                            leading: Radio<MyGirl>(
                              value: MyGirl.laura,
                              groupValue: _girl,
                              onChanged: (MyGirl? value) {
                                setState(() {
                                  _girl = value;
                                  leave = 'notleave';
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      Material(
                        elevation: 18,
                        shadowColor: Colors.grey,
                        child: Theme(
                          data: ThemeData.dark(),
                          child: ListTile(
                            title: const Text('Leave',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),),
                            leading: Radio<MyGirl>(
                              value: MyGirl.flora,
                              groupValue: _girl,
                              onChanged: (MyGirl? value) {
                                setState(() {
                                  _girl = value;
                                  leave = 'leave';
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Column(
                      children: [
                        Material(
                          elevation: 18,
                          shadowColor: Colors.grey,
                          child: Theme(
                            data: ThemeData.dark(),
                            child: ListTile(
                              title: const Text('Not Late',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),),
                              leading: Radio<MyGirl2>(
                                value: MyGirl2.laura,
                                groupValue: _girl2,
                                onChanged: (MyGirl2? value) {
                                  setState(() {
                                    _girl2 = value;
                                    late = 'notlate';
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        Material(
                          elevation: 18,
                          shadowColor: Colors.grey,
                          child: Theme(
                            data: ThemeData.dark(),
                            child: ListTile(
                              title: const Text('Late',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),),
                              leading: Radio<MyGirl2>(
                                value: MyGirl2.flora,
                                groupValue: _girl2,
                                onChanged: (MyGirl2? value) {
                                  setState(() {
                                    _girl2 = value;
                                    late = 'late';
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Material(
                      elevation: 18,
                      shadowColor: Colors.grey,
                      child: TextField(
                        onChanged: (value) {
                          syear = value;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          fillColor: Colors.white38,
                          filled: true,
                          labelText: 'Enter Service Year',
                        ),
                        keyboardType: TextInputType.number,
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
                        Text((result != 0)?'Salary : $result':'',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lucida Console',
                              fontSize: 20,
                              color: Colors.deepPurple,
                            )
                        ),
                      ],
                    )
                )
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                            onPressed: (){
                              MyDataAccess da = new MyDataAccess();
                              setState(() {
                                result = da.totalSalary(leave, late, name, syear);
                              });
                            },
                            child: Text('Calculate Salary',
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                          ),
                        ),

                        Container (
                          padding: EdgeInsets.all(10),
                          child: ElevatedButton(
                            onPressed: (){
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return HomePage();
                                }));
                              });
                            },

                            child: Text('Back To Home',
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                          ),
                        ),

              ],
            )));
  }
}




