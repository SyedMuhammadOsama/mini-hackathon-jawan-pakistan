import 'package:flutter/material.dart';
import 'package:hackathon/firebase_service.dart';
import 'package:hackathon/screens/bottom_nac_screens.dart';
import 'package:hackathon/screens/top_tab_bar.dart';
import 'package:hackathon/widgets/text_form_field_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = 'LoginScreen';
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  signUp(context) async {
    UserCredential userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailController.text,
      password: passController.text,
    );
    if (userCredential.user != null) {
      Navigator.pushNamedAndRemoveUntil(
          context, TabsScreen.routeName, (route) => false);
    }
  }

  FirebaseService service = new FirebaseService();

  login(context) async {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: emailController.text, password: passController.text);
    if (userCredential.user != null) {
      Navigator.pushNamedAndRemoveUntil(
          context, TabsScreen.routeName, (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.all(23),
              child: ClipRRect(child: Image.asset("assets/Vector.png"))),
          Container(
            margin: EdgeInsets.all(23),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextFormFieldWidget(
                        hint: 'Your Email',
                        controller: emailController,
                        icon: Icons.person),
                    TextFormFieldWidget(
                      hint: 'Password',
                      controller: passController,
                      icon: Icons.lock,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        login(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Login'),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.pink)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Container(
                              height: 1,
                              width: 70,
                              decoration: BoxDecoration(color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Text(
                              'OR',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: 1,
                              width: 70,
                              decoration: BoxDecoration(color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SignInButton(
                      Buttons.Google,
                      text: "Sign in with Google",
                      onPressed: () async {
                        try {
                          await service.signInwithGoogle();
                          Navigator.pushNamedAndRemoveUntil(
                              context, TabsScreen.routeName, (route) => false);
                        } catch (e) {
                          if (e is FirebaseAuthException) {
                            // showMessage(e.message!);
                          }
                        }
                      },
                    ),
                    TextButton(
                      onPressed: () {
                        signUp(context);
                      },
                      child: Text(
                        'Create an Account',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 1,
                        width: 100,
                        decoration: BoxDecoration(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
