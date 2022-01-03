import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
        appBar: AppBar(
          title: Image(
            image: NetworkImage('https://qbank.accelq.com/client/images/thumbnail_logo_darkbg.jpg')
          ),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child:
                    Text(
                      'qBank',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w500,
                          fontSize: 30
                      ),
                    )
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                TextButton(
                  child: const Text('Forgot Password'),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.blueGrey,
                    //textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},

                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      style: style,
                      onPressed: () {},
                      child: const Text('Login'),
                    ),
                    // child: RaisedButton(
                    //   textColor: Colors.white,
                    //   color: Colors.blueGrey,
                    //   child: Text('Login'),
                    //   onPressed: () {
                    //     print(nameController.text);
                    //     print(passwordController.text);
                    //   },
                    // )
                  ),
                Container(
                    child: Row(
                      children: <Widget>[
                        Text('Does not have account?'),
                        TextButton(
                          style: TextButton.styleFrom(
                            //padding: const EdgeInsets.all(16.0),
                            primary: Colors.blueGrey,
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: () {},
                          child: const Text('Sign up'),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
              ],
            )));
  }
}