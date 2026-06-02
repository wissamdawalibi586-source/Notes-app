import 'package:aaaa/Widgets%20for%20chatapp/Constants.dart';
import 'package:aaaa/Widgets%20for%20chatapp/Chat_Page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'Custom_text_field.dart';
import 'Login_buttom.dart';
import 'Show_snakbar.dart';

class SignPage extends StatefulWidget {
  SignPage({super.key});

  static String id = "signPage";

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  String? email;

  String? password;
  bool isLoding = false;

  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoding,
      child: Scaffold(
        backgroundColor: kPriamryColor,
        body: Form(
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
                padding: const EdgeInsets.only(right: 270),
                child: Text(
                  " Sign in",
                  style: TextStyle(color: Colors.white, fontSize: 23),
                ),
              ),
              SizedBox(height: 13),
              CustomTextField(
                onChagned: (Data) {
                  email = Data;
                },
                text: "Email",
              ),
              SizedBox(height: 8),
              CustomTextField(
                obscuretext: true,
                onChagned: (Data1) {
                  password = Data1;
                },
                text: "Password",
              ),

              SizedBox(height: 18),
              LoginButtom(
                onTap: () async {
                  print("CLICKED");
                  if (formkey.currentState!.validate()) {
                    isLoding = true;
                    setState(() {});
                    try {
                      UserCredential user = await Registretion_user();
                     Navigator.pushNamed(context, ChatPage.id,arguments: email);

                      print("SUCCESS: ${user.user!.email}");
                    } on FirebaseAuthException catch (ex) {
                      if (ex.code == 'weak-password') {
                        showSnackBar(context, "your password is weak");
                      } else if (ex.code == 'email-already-in-use') {
                        showSnackBar(context, "the email is already used");
                      }
                    } catch (ex) {
                      showSnackBar(context, "there was an error");
                    }
                    isLoding = false;
                    setState(() {});
                  } else {}
                },

                text: "Sign In ",
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
                        Navigator.pop(context);
                      },
                      child: Text(
                        " Login",
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
    );
  }



  Future<UserCredential> Registretion_user() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
          email: email!.trim(),
          password: password!.trim(),
        );
    return user;
  }
}
