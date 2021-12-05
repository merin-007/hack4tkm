import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_one/screens/admin_dynamic_fare.dart';
import 'package:project_one/screens/admin_having_user_data.dart';

class AdminUi extends StatefulWidget {
  const AdminUi({Key? key}) : super(key: key);
  static String id = 'admin_ui';

  @override
  _AdminUiState createState() => _AdminUiState();
}

class _AdminUiState extends State<AdminUi> {
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
                    tileColor: Color(0xC4E8E799),
                    title: Text(
                      "Hello Admin!",
                      style: TextStyle(
                          color: Color(0xFF050513),
                          fontFamily: 'SpaceMono',
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                    leading: Icon(
                      Icons.account_circle_sharp,
                      size: 40,
                      color: Color(0xE4232317),
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            //secondTile ******************************************************
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: 200,
                      child: ListTile(
                        contentPadding: EdgeInsets.only(
                            left: 10, right: 10, top: 60, bottom: 20),
                        title: Text(
                          "Analysis of user Data",
                          style: TextStyle(
                            fontFamily: 'Readex',
                            fontSize: 20,
                            color: Colors.grey[800],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        tileColor: Color(0xC4E8E799),
                        leading: Text(
                          "Today:",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        subtitle: Icon(
                          Icons.auto_graph,
                          size: 40,
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, Admin_Haveing_User_Data.id);
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 100,
                      child: ListTile(
                        contentPadding: EdgeInsets.only(
                            left: 10, right: 10, top: 60, bottom: 20),
                        title: Text("Pow.Down Areas!"),
                        subtitle: Text(
                          "23",
                          style: TextStyle(
                            fontFamily: 'Readex',
                            fontSize: 70,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),
                        ),
                        tileColor: Colors.white,
                        onTap: () {
                          print("im pressed");
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            //fourth tile ****************************************
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ListTile(
                      contentPadding: EdgeInsets.only(
                          left: 10, right: 10, top: 60, bottom: 20),
                      leading: Text(
                        "Anomoly\nDetection ",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      title: const Text(
                        "",
                        style: TextStyle(
                          fontFamily: 'Readex',
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Icon(
                          Icons.error,
                          size: 40,
                          color: Colors.grey[800],
                        ),
                      ),
                      tileColor: Colors.white,
                      onTap: () {
                        print("im pressed");
                      },
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: 100,
                      child: ListTile(
                        contentPadding: EdgeInsets.only(
                            left: 50, right: 10, top: 50, bottom: 20),
                        title: Text(
                          "Peak Hours \nand Dynamic Fare\n",
                          style: TextStyle(
                            fontFamily: 'Readex',
                            fontSize: 20,
                            color: Colors.grey[800],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Icon(
                          Icons.event_note,
                          size: 40,
                        ),
                        tileColor: Color(0xC4E8E799),
                        onTap: () {
                          Navigator.pushNamed(context, Admin_Dynamic_Fare.id);
                        },
                      ),
                    ),
                  ),
                ],
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
                          tileColor: Color(0xC4E8E799),
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
                          tileColor: Color(0xC4E8E799),
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
                          tileColor: Color(0xC4E8E799),
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
