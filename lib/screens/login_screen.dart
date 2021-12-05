import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_one/screens/parent_login_screen.dart';
import 'welcome_screen.dart';
import 'package:project_one/constants.dart';
import 'ui_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'admin_ui.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';


class LogIn extends StatefulWidget {
  var user;
  LogIn(this.user);


  @override

  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _auth= FirebaseAuth.instance;
  String email = '';
  String password = '';
  String? cur_user_email='';
  bool show_spinner = false;

  void getCurrentUser() async{
    try{
        final user = await _auth.currentUser;
        if(user != null){
          User loggedinUser = user;
          cur_user_email = loggedinUser.email;
          print(loggedinUser.email);
      }
    }catch(e){
      print(e);
    }

  }

  @override
  void initState(){
    getCurrentUser();
    print(cur_user_email!);
  }

  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: show_spinner,
      child: Container(
        color: const Color(0xFF212121),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              children: <Widget>[
                Text(
                  widget.user + ' Log In',
                  style: const TextStyle(
                    color: Color(0xFFFF914D),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: const InputDecoration(
                    hintText: 'email',
                    hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey),
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    password = value;
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'password',
                    hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Color(0xFFFF914D),
                  ),
                  width: 130,
                  height: 10,
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  elevation: 2,
                  focusElevation: 4,
                  hoverElevation: 4,
                  highlightElevation: 8,
                  disabledElevation: 0,
                  color: Color(0xFFFF914D),
                  onPressed: () async{
                    setState(){
                      show_spinner = true;
                    }
                    try{
                      final newUser = await _auth.signInWithEmailAndPassword(email: email, password: password);
                      print("this works");
                      if(newUser != null){
                        setState(){
                          show_spinner = false;
                        }
                        if(widget.user=="Administrator")
                          Navigator.pushNamed(context, AdminUi.id);
                        else{
                          Navigator.pushNamed(context, UiScreen.id);
                        }

                      }else{
                        setState(){
                          show_spinner = false;
                        };

                        print("the user is null");
                      }
                      //Navigator.pushNamed(context, UiScreen.id);

                    }catch(e){
                      print("the user is null, there is exception");
                      print(e);
                    }
                  },
                  child: Text('Login'),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          decoration: const BoxDecoration(
            color: Color(0x2F1A1212),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}
