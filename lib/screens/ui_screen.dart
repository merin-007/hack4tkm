import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:project_one/constants.dart';
import 'package:project_one/screens/daily_usage.dart';
import 'peak_analysis.dart';

class UiScreen extends StatefulWidget {
  const UiScreen({Key? key}) : super(key: key);
  static String id = 'ui_screen';

  @override
  _UiScreenState createState() => _UiScreenState();
}

class _UiScreenState extends State<UiScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("InSight"),
          backgroundColor: Colors.blueGrey[900],
        ),
        backgroundColor: Color(0xFF212121),
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //tile 1 **********************************************************
            const SizedBox(
              height: 80,
              child: Expanded(
                child: ListTile(
                    tileColor: Color(0xFFFF914D),
                    title: Text(
                      "Hello User!",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SpaceMono',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    leading: Icon(
                      Icons.account_circle_sharp,
                      size: 40,
                      color: Colors.white,
                    )),
              ),
            ),

            //secondTile ******************************************************
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 2,
                    child: ListTile(
                      title: Text(
                        "63.47",
                        style: TextStyle(
                          fontFamily: 'Readex',
                          fontSize: 40,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      tileColor: Colors.white,
                      leading: Text("Today:"),
                      trailing: const Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: Icon(
                          Icons.attach_money_rounded,
                          color: Colors.lightGreen,
                        ),
                      ),
                      onTap: (){
                        print("im pressed");
                      },
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 100,
                      child: ListTile(
                        title: Text("Total:"),
                        subtitle: Text(
                          "1345.7",
                          style: TextStyle(
                            fontFamily: 'Readex',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),
                        ),
                        tileColor: Colors.white,
                        onTap: (){
                          print("im pressed");
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //third tile *******************************************
            Expanded(
              child: SizedBox(
                child: Container(
                  color: Color(0xFFFF914D),
                  child: FlatButton(
                    child: Row(
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'PEAK_Time\nAnalysis',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                fontFamily: 'SpaceMono',
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Image.asset('Images/peakGraph.png'),
                          ),
                        ),
                        const Expanded(
                          flex: 2,
                          child: ListTile(
                            title: Text("Pricing: ", style: TextStyle(color: Colors.white),),
                            subtitle: Text(
                              '1.2/unit',
                              style:  TextStyle(
                                color: Color(0xE6610C0C),
                                fontWeight: FontWeight.w700,
                                fontFamily: 'SpaceMono',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, PeakAnalysis.id);
                    },
                  ),
                ),
              ),
            ),

            //fourth tile ****************************************
            Expanded(
              child: SizedBox(
                child: Container(
                  color: Color(0xFFFF914D),
                  child: FlatButton(
                    child: Row(
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'REAL_Time\nAnalysis',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                fontFamily: 'SpaceMono',
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Image.asset('Images/clock.png'),
                          ),
                        ),
                        const Expanded(
                          flex: 2,
                          child: ListTile(
                            title: Text("Base Pricing: ",style: TextStyle(color: Colors.white),),
                            subtitle: Text(
                              '1/unit',
                              style: TextStyle(
                                  color: Color(0xE634580B),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'SpaceMono',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, DailyUsage.id);
                    },
                  ),
                ),
              ),
            ),


            //fifth row
            Expanded(
              child: Row(
                children: const <Widget>[
                  Expanded(
                    child: SizedBox(
                      height: 70,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          contentPadding: EdgeInsets.only(left: 10.0, right: 0.0),
                          tileColor: Color(0xFFFF914D),
                          leading: Icon(
                            Icons.message,
                          ),
                          subtitle: Text(
                              "reach\nUs"
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 70,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          contentPadding: EdgeInsets.only(left: 10.0, right: 0.0),
                          tileColor: Color(0xFFFF914D),
                          leading: Icon(
                            Icons.add_alert,
                          ),
                          subtitle: Text(
                              "Alert\n"
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 70,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          contentPadding: EdgeInsets.only(left: 10.0, right: 0.0),
                          tileColor: Color(0xFFFF914D),
                          leading: Icon(
                            Icons.announcement,
                          ),
                          subtitle: Text(
                              "notif\n"
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
