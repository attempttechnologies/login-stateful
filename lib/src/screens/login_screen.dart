import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        child: Column(
          children: [
            this._emailField(),
            this._passwordField(),
            Container(margin: EdgeInsets.only(bottom: 25.0)),
            this._submitButton(),
          ],
        ),
      ),
    );
  }

  TextFormField _emailField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }

  TextFormField _passwordField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
      ),
      obscureText: true,
    );
  }

  RaisedButton _submitButton() {
    return RaisedButton(
      color: Colors.blue,
      onPressed: () {},
      child: Text('Login'),
    );
  }
}
