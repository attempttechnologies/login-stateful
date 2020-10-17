import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: _formKey,
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
      onSaved: (String value) {
        this._email = value;
      },
      validator: validateEmail,
    );
  }

  TextFormField _passwordField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
      ),
      obscureText: true,
      onSaved: (String value) {
        this._password = value;
      },
      validator: validatePassword,
    );
  }

  RaisedButton _submitButton() {
    return RaisedButton(
      color: Colors.blue,
      onPressed: () {
        if (this._formKey.currentState.validate()) {
          this._formKey.currentState.save();
          print('${this._email} - ${this._password}');
        }
      },
      child: Text('Login'),
    );
  }
}
