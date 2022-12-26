import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class seconddisplay extends StatelessWidget {

  int hrcount;
  int academiccount;
  int financecount;
  int marketingcount;
 seconddisplay(this. hrcount,this.academiccount,this.financecount,this.marketingcount);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(fontWeight: FontWeight.bold,fontSize:14),
          headline1: TextStyle(fontFamily: 'Calibri',fontWeight: FontWeight.bold,fontSize: 20)
        ),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.orange).copyWith(secondary: Colors.purpleAccent
        )
      ),
      home:Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Displaying Total Employees')),
          automaticallyImplyLeading: false,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: mysecondshow(hrcount,academiccount,financecount,marketingcount),
      )
    );
  }
}

class mysecondshow extends StatefulWidget {
  int hcount;
  int acount;
  int fcount;
  int mcount;
mysecondshow(this.hcount,this.acount,this.fcount,this.mcount);

  @override
  State<mysecondshow> createState() => _mysecondshowState(hcount,acount,fcount,mcount);
}

class _mysecondshowState extends State<mysecondshow> {
  int hcount;
  int acount;
  int fcount;
  int mcount;
  _mysecondshowState(this.hcount,this.acount,this.fcount,this.mcount);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: Image(
            width: 100,
            height: 200,
            image: AssetImage('images/logo_transparent.png'),
          ),
        ),
        Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            alignment: Alignment.center,
            child: Material(
                elevation: 18,
                shadowColor: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DataTable(
                        columns: [
                          DataColumn(
                              label: Text(
                                'Departments',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                          ),
                          DataColumn(
                              label: Text(
                                'Employees',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                          )
                        ],

                        rows: [
                          DataRow(
                              cells: [
                                DataCell(Text('HR')),
                                DataCell(Text('$hcount'))
                              ]
                          ),
                          DataRow(
                              cells: [
                                DataCell(Text('Academic')),
                                DataCell(Text('$acount'))
                              ]
                          ),
                          DataRow(
                              cells: [
                                DataCell(Text('Finance')),
                                DataCell(Text('$fcount'))
                              ]
                          ),
                          DataRow(
                              cells: [
                                DataCell(Text('Marketing')),
                                DataCell(Text('$mcount'))
                              ]
                          ),
                        ]
                    )
                  ],
                )
            )),
      ],

    );
  }
}

