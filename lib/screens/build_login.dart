import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/screens/login_controller.dart';
import 'package:sign_button/sign_button.dart';
import 'package:login/colors.dart';
import 'package:get/get.dart';


final controller = Get.put(LoginController());

class buildLogin extends StatefulWidget {
  const buildLogin({Key? key}) : super(key: key);

  @override
  _buildLoginState createState() => _buildLoginState();
}

class _buildLoginState extends State<buildLogin> {
  @override
  

  bool _isHidden = true;
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Text(
            "WELCOME",
            style: GoogleFonts.baloo(
              letterSpacing: 5,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://cdn3d.iconscout.com/3d/premium/thumb/login-3025715-2526913.png',
                    height: (height * 30) / 100,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                child: TextFormField(
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.left,
                  onChanged: (text) {},
                  decoration: InputDecoration(
                    fillColor: primaryColor,
                    filled: true,
                    hintText: "Enter Email",
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.account_circle,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                child: TextFormField(
                  obscureText: _isHidden,
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.visiblePassword,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    fillColor: primaryColor,
                    filled: true,
                    hintText: "Enter Password",
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: new BorderSide(color: primaryColor),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    suffixIcon: IconButton(
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            _isHidden = !_isHidden;
                          });
                        },
                        icon: Icon(_isHidden
                            ? Icons.visibility
                            : Icons.visibility_off)),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "FORGOT PASSWORD?",
                        style: TextStyle(
                          color: primaryColor,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: width - (width * 10 / 100),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "LOGIN",
                    style: GoogleFonts.baloo(
                      letterSpacing: 5,
                      fontSize: 30,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    primary: primaryColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 2.5, 0, 2.5),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                        thickness: 2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Text(
                        "Or sign Up With",
                        style: GoogleFonts.baloo(),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                        thickness: 2,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SignInButton.mini(
                    buttonType: ButtonType.google,
                    onPressed: () {
                      controller.login();
                    },
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}