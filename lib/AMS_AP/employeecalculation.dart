import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hnd36firsttesting/AMS_AP/MyDataAccess.dart';
import 'package:hnd36firsttesting/AMS_AP/secontdisplay.dart';
import 'MyDataAccess.dart';



class employeecalculation extends StatelessWidget {
  const employeecalculation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
            fontFamily: 'Times New Roman',
            colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.orange).copyWith(secondary: Colors.deepPurple),

            ),

        home: Scaffold(
            appBar: AppBar(
                title: Text('Employee Calculation'),
              automaticallyImplyLeading: false,
              leading: new IconButton(
                icon: new Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),

            ),

            body: myshowtest()));
  }
}

class myshowtest extends StatefulWidget {
  const myshowtest({Key? key}) : super(key: key);

  @override
  State<myshowtest> createState() => _myshowtestState();
}

class _myshowtestState extends State<myshowtest> {
  int hrcount=0;
  int academiccount=0;
  int financecount=0;
  int marketingcount=0;

  void Dcount(){
    MyDataAccess em=MyDataAccess();

    hrcount=em.hcount();
    print(hrcount);

    academiccount=em.acount();
    print(academiccount);

    financecount=em.fcount();
    print(financecount);

    marketingcount=em.mcount();
    print(marketingcount);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: FloatingActionButton(
            backgroundColor: Colors.orange,

            child: const Icon(Icons.add),
            onPressed: () {

              Dcount();
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return seconddisplay(hrcount,academiccount,financecount,marketingcount);
              }));
            },
      )

          ),
    );
  }
}
