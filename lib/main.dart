import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {
        '/signup': (BuildContext context) => new SignupPage()
      },
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                    padding: EdgeInsets.fromLTRB(30.0,70.0,0,0),
                    child: Text(
                      'Hello',
                      style: TextStyle(
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30.0,140.0,0,0),
                    child: Text(
                      'There',
                      style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(230.0,150.0,0,0),
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
                  SizedBox(height: 5.0,),
                  Container(
                    alignment: Alignment(1,0),
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 0.0),
                    child: InkWell(
                      child: Text(
                          'Forget Password',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.0,),
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
                            'LOGIN',
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
                              AssetImage('assets/facebook.png')
                            ),
                          ),
                          SizedBox(width: 6.0,),
                          Center(
                            child: Text(
                              'Login with facebook',
                              style: TextStyle(
                                fontWeight: FontWeight.bold
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
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New to spotify',
                ),
                SizedBox(width: 4.0,),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/signup');
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
  }
}
