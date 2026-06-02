import 'package:aaaa/Widgets%20for%20chatapp/Constants.dart';
import 'package:aaaa/Widgets for chatapp/Custom_text_field.dart';
import 'package:aaaa/Widgets for chatapp/Login_buttom.dart';
import 'package:aaaa/Widgets for chatapp/Sign_Page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'Chat_Page.dart';
import 'Show_snakbar.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});
static String id = "LoginPage";
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoading = false;
  String? email, password;
  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: kPriamryColor,
        body: Center(
          child: Form(
            key: formkey,
            child: ListView(
              children: [
                SizedBox(height: 40),
                Image.asset("assets/Chatapp/images/scholar.png", height: 120),
                Center(
                  child: Text(
                    "Scholar Chat",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Pacifico",
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                SizedBox(height: 75),
                Padding(
                  padding: const EdgeInsets.only(right: 288),
                  child: Text(
                    " Login",
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  ),
                ),
                SizedBox(height: 13),

                CustomTextField(
                  onChagned: (data) {
                    email = data;
                  },
                  text: "Email",
                ),

                SizedBox(height: 8),

                CustomTextField(
                  obscuretext: true,
                  onChagned: (data) {
                    password = data;
                  },
                  text: "Password",
                ),

                SizedBox(height: 18),

                LoginButtom(
                  onTap: () async {
                    if (formkey.currentState!.validate()) {
                      setState(() {
                        isLoading = true;
                      });

                      try {
                        UserCredential user = await loginUser();

                        setState(() {
                          isLoading = false;
                        });

                        Navigator.pushNamed(context, ChatPage.id,arguments: email);
                      } on FirebaseAuthException catch (ex) {
                        if (mounted) {
                          setState(() {
                            isLoading = false;
                          });
                        }

                        print("ERROR CODE: ${ex.code}");

                        String message;

                        if (ex.code == 'invalid-credential') {
                          message = "Email or password is incorrect";

                        } else if (ex.code == 'invalid-email') {
                          message = "Invalid email format";

                        } else {
                          message = "Login failed, please try again";
                        }

                        showSnackBar(context, message);
                      } catch (ex) {
                        if (mounted) {
                          setState(() {
                            isLoading = false;
                          });
                        }

                        showSnackBar(context, "There was an error");
                      }
                    }
                  },
                  text: "Login",
                  textColor: Color(0xff99B6C2),
                  backgroundColor: Colors.white,
                ),

                SizedBox(height: 5),

                Padding(
                  padding: const EdgeInsets.only(left: 75),
                  child: Row(
                    children: [
                      Text(
                        "don't have an account ?",
                        style: TextStyle(color: Colors.white),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, SignPage.id);
                        },
                        child: Text(
                          " Sign Up",
                          style: TextStyle(color: Color(0xff99B6C2)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<UserCredential> loginUser() async {
    return await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email!,
      password: password!,
    );
  }
}