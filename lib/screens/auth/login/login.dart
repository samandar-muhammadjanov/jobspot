import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job/constants/constants.dart';
import 'package:job/screens/home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const routeName = "/login";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool value = false;
  bool obscure = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: 32,
                  color: kTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                textAlign: TextAlign.center,
                style: TextStyle(color: kTextColor2),
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Phone",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kTextColor),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Ushbu maydon bo`sh bo`lishi mumkin emas!";
                      }
                    },
                    keyboardType: TextInputType.phone,
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: InputDecoration(
                        filled: true,
                        prefixText: "+998",
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 219, 219, 219)),
                            borderRadius: BorderRadius.circular(6)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor),
                            borderRadius: BorderRadius.circular(6))),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Password",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kTextColor),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  TextFormField(
                    obscureText: obscure,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Ushbu maydon bo`sh bo`lishi mumkin emas!";
                      }
                    },
                    keyboardType: TextInputType.visiblePassword,
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: InputDecoration(
                        suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                obscure = !obscure;
                              });
                            },
                            child: Icon(
                              !obscure
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: Colors.grey,
                            )),
                        filled: true,
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 219, 219, 219)),
                            borderRadius: BorderRadius.circular(6)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor),
                            borderRadius: BorderRadius.circular(6))),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        primary: Theme.of(context).primaryColor),
                    child: const Text("Forgot Password ?"),
                  )
                ],
              ),
              ElevatedButton(
                  onPressed: () => Navigator.of(context)
                      .pushReplacementNamed(HomeScreen.routeName),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(size.width, size.height * 0.05),
                    shadowColor: Colors.transparent,
                    primary: kTextColor,
                  ),
                  child: Text("Login".toUpperCase())),
              const Text(
                "or",
                style: TextStyle(fontSize: 18),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Image.asset(
                  "assets/images/google.png",
                  width: 15,
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shadowColor: Colors.transparent,
                  minimumSize: Size(size.width, size.height * 0.05),
                  primary: const Color.fromRGBO(214, 205, 254, 1),
                ),
                label: Text(
                  "Sign in with Google".toUpperCase(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You don't have an account yet?",
                    style: TextStyle(color: kTextColor2),
                  ),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          primary: kTextColor3,
                          textStyle: TextStyle(
                              fontFamily: GoogleFonts.dmSans().fontFamily,
                              decoration: TextDecoration.underline)),
                      child: const Text(
                        "Sign Up",
                      ))
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
