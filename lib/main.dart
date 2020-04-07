
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Task 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Login Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Image.asset('assets/images/user-login-person-512.png',
            width: 100,
            height: 100,
            ),
           Container(
             alignment: Alignment.center,
             padding: EdgeInsets.all(10),
             child: Text(
               "StartNg",
               style: TextStyle(
                 color: Colors.blue,
                 fontWeight: FontWeight.w500,
                 fontSize:  30,
               ),
             ),
           ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text("Sign In Page",
              style: TextStyle(
                fontSize: 20
              ),),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name'
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password'
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                // This Will Contain The Forgot Password Method
              },
              textColor: Colors.lightBlueAccent,
              child: Text('Forgot Password'),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: RaisedButton(
                textColor: Colors.red,
                child: Text('Login',
                style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                },
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Text('New Here?'),
                  FlatButton(
                    textColor: Colors.blue,
                    child: Text('Sign In',
                    style: TextStyle(
                      fontSize: 20,
                    ),),
                    onPressed: (){
                      // Method for signing in

                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

