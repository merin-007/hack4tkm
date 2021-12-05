import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'parent_login_screen.dart';
import 'login_screen.dart';
import 'package:firebase_core/firebase_core.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.account_tree_rounded,
                color: Colors.white,
              ),
              onPressed: () {
                print("nothing");
              },
            )
          ],
          title: const Center(
            child: Text(
              'Insight',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "SpaceMono",
              ),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                height: 60,
              ),
              Expanded(
                  child: CircleAvatar(
                    child: Image.asset("Images/logo.png"),
                    radius: 130,
                  )
              ),
              const Expanded(child: Text(
                'I N S I G H T',
                style: TextStyle(
                  fontFamily: 'SpaceMono',
                  fontSize: 40,
                ),
              )),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(right: 30, left: 30),
                    trailing: const Icon(
                      Icons.admin_panel_settings_rounded,
                      size: 50,
                    ),
                    title:const Text(
                      'Admin',
                      style: TextStyle(
                        fontFamily: 'SpaceMono',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    tileColor: Color(0xFFFF914D),
                    onTap: (){
                      showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context){
                            return LogIn("Administrator");
                          }
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(right: 30, left: 30),
                    trailing: const Icon(
                      Icons.face,
                      size: 50,
                    ),
                    title:const Text(
                      'Customer',
                      style: TextStyle(
                        fontFamily: 'SpaceMono',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    tileColor: Color(0xFF212121),
                    onTap: (){
                      showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context){
                            return LogIn("User");
                          }
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

