import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:parking_at_home/home_page.dart';
import 'package:parking_at_home/resources.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FractionallySizedBox(
            widthFactor: 0.65,
            alignment: Alignment.center,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                ResStrings.loginPageTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ResColors.primary,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          ),
          SizedBox(height: 64),
          FractionallySizedBox(
            widthFactor: 0.75,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: ResStrings.loginPageLoginFieldPlaceholder,
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(),
                    labelText: ResStrings.loginPagePasswordFieldPlaceholder,
                  ),
                ),
                SizedBox(height: 48),
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  color: Colors.blue,
                  child: Text(
                    ResStrings.loginPageLoginButton,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
