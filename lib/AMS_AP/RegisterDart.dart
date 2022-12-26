import 'package:flutter/material.dart';
import 'package:hnd36firsttesting/AMS_AP/Customer.dart';
import 'package:hnd36firsttesting/AMS_AP/MyDataAccess.dart';


class RegD extends StatelessWidget {
  const RegD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.orange).copyWith(secondary: Colors.purpleAccent),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Register Form'),
          automaticallyImplyLeading: false,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: RegisterDart(),
      ),
    );
  }
}

class RegisterDart extends StatefulWidget {
  const RegisterDart({Key? key}) : super(key: key);

  @override
  State<RegisterDart> createState() => _RegisterDartState();
}

class _RegisterDartState extends State<RegisterDart> {
  @override

  TextEditingController _name = new TextEditingController();
  TextEditingController _nrc = new TextEditingController();
  TextEditingController _gender = new TextEditingController();
  TextEditingController _department = new TextEditingController();
  TextEditingController _position = new TextEditingController();
  TextEditingController _salary = new TextEditingController();
  TextEditingController _phone = new TextEditingController();
  TextEditingController _email = new TextEditingController();
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
                      Text('Register Form',
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
                  controller: _name,
                    onChanged: (value) {

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
                      labelText: 'Enter Name',
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    )),
              )),
          Container(
              padding: EdgeInsets.all(10),
              child: Material(
                elevation: 18,
                shadowColor: Colors.grey,
                child: TextField(
                    controller: _nrc,
                    onChanged: (value) {

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
                      labelText: 'Enter NRC',
                      prefixIcon: Icon(
                        Icons.perm_identity,
                        color: Colors.black,
                      ),
                    )),
              )),
          Container(
              padding: EdgeInsets.all(10),
              child: Material(
                elevation: 18,
                shadowColor: Colors.grey,
                child: TextField(
                    controller: _gender,
                    onChanged: (value) {

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
                      labelText: 'Enter Gender',
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    )),
              )),
          Container(
              padding: EdgeInsets.all(10),
              child: Material(
                elevation: 18,
                shadowColor: Colors.grey,
                child: TextField(
                    controller: _department,
                    onChanged: (value) {

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
                      labelText: 'Enter Department',
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    )),
              )),
          Container(
              padding: EdgeInsets.all(10),
              child: Material(
                elevation: 18,
                shadowColor: Colors.grey,
                child: TextField(
                    controller: _position,
                    onChanged: (value) {

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
                      labelText: 'Enter Position',
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    )),
              )),
          Container(
              padding: EdgeInsets.all(10),
              child: Material(
                elevation: 18,
                shadowColor: Colors.grey,
                child: TextField(
                  controller: _salary,
                    onChanged: (value) {

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
                      labelText: 'Enter Basic Salary',
                      prefixIcon: Icon(
                        Icons.monetization_on,
                        color: Colors.black,
                      ),
                    )),
              )),
          Container(
              padding: EdgeInsets.all(10),
              child: Material(
                elevation: 18,
                shadowColor: Colors.grey,
                child: TextField(
                  controller: _email,
                    onChanged: (value) {

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
                      labelText: 'Enter Email',
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                    )),
              )),
          Container(
              padding: EdgeInsets.all(10),
              child: Material(
                elevation: 18,
                shadowColor: Colors.grey,
                child: TextField(
                    controller: _phone,
                    onChanged: (value) {

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
                      labelText: 'Enter Phone',
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.black,
                      ),
                    )),
              )),
          Container(
            height: 60,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Material(
              elevation: 18,
              shadowColor: Colors.grey,
              child: ElevatedButton(
                onPressed: (){
                  setState(() {

                    Employee c=new Employee(_name.text, _nrc.text,_gender.text,_department.text,_position.text,_salary.text,_email.text,_phone.text);
                    MyDataAccess mda = new MyDataAccess();
                    int size = mda.saveData(c);
                    print(size);

                  });

                },
                child: Text('Save',
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
      ),
    );
  }
}
