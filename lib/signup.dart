import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(30.0,80.0,0,0),
                  child: Text(
                    'Signup',
                    style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(270.0,95.0,0,0),
                  child: Text(
                    '.',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20.0,10.0, 20.0, 0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'EMAIL',
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                        )
                    ),
                  ),
                ),
                SizedBox(height: 15.0,),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'PASSWORD',
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                        )
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 15.0,),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'NICKNAME',
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                        )
                    ),
                  ),
                ),
                SizedBox(height: 70.0,),
                Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.greenAccent,
                    color: Colors.green,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: (){},
                      child: Center(
                        child: Text(
                          'SIGNUP',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 40.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: ImageIcon(
                              AssetImage('assets/arrow_left-512.png')
                          ),
                        ),
                        SizedBox(width: 6.0,),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Center(
                            child: Text(
                              'GO BACK',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
