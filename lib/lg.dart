import 'package:flutter/material.dart';
import 'package:flutter_application_4/homepage.dart';

class LoginPage extends StatelessWidget {
  final _usnCotroller = TextEditingController();
  final _pswController = TextEditingController();
  @override
  Widget build(context) =>
      Scaffold(body: LayoutBuilder(builder: (context, constraints) {
        return AnimatedContainer(
            duration: Duration(milliseconds: 500),
            color: Colors.lightGreen[200],
            padding: constraints.maxWidth < 400
                ? EdgeInsets.zero
                : const EdgeInsets.all(30.0),
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 25.0, horizontal: 25.0),
                constraints: BoxConstraints(
                  maxWidth: 300,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("ChatApp"),
                      TextField(
                          controller: _usnCotroller,
                          decoration: InputDecoration(labelText: "username")),
                      TextField(
                          controller: _pswController,
                          obscureText: true,
                          decoration: InputDecoration(labelText: "password")),
                      ElevatedButton(
                          onPressed: () {
                            checklogin(context);
                          },
                          child: Text('Login'))
                    ]),
              ),
            ));
      }));
  void checklogin(BuildContext context) {
    final username = _usnCotroller.text;
    final password = _pswController.text;
    if (username == password) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return ScreenCategory();
      }));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('UserName and Password dosenot Match')));
    }
  }
}
