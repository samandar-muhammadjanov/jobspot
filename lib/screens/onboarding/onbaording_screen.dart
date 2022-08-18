import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job/constants/constants.dart';
import 'package:job/screens/auth/login/login.dart';
import 'package:job/screens/onboarding/onboarding2.dart';

class OnbardingScreen extends StatefulWidget {
  const OnbardingScreen({Key? key}) : super(key: key);
  static const routeName = "/onbarding";
  @override
  State<OnbardingScreen> createState() => _OnbardingScreenState();
}

class _OnbardingScreenState extends State<OnbardingScreen> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> list = [
      {
        "text": "As Worker",
        "onTap": () {
          Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
        }
      },
      {
        "text": "As Finder Worker",
        "onTap": () {
          Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
        }
      }
    ];
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Jobspot",
                    style: Theme.of(context).textTheme.headline5,
                  )
                ],
              ),
              const Spacer(),
              SvgPicture.asset(
                "assets/images/onboarding.svg",
                fit: BoxFit.cover,
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    softWrap: false,
                    text: TextSpan(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.dmSans().fontFamily,
                          height: 1),
                      children: [
                        const TextSpan(text: "Find Your\n"),
                        TextSpan(
                          text: "Dream Job\n",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: kTextColor3,
                          ),
                        ),
                        const TextSpan(
                            text: "Here!", style: TextStyle(height: 1.1)),
                      ],
                    ),
                  ),
                  const Text(
                    "Explore all the most exciting job roles basedon your interest and study major.",
                    style: TextStyle(color: Color.fromRGBO(82, 75, 107, 1)),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Scaffold(
                            backgroundColor: Colors.transparent,
                            body: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: list.map(
                                  (e) {
                                    return Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: InkWell(
                                        onTap: e["onTap"],
                                        child: Container(
                                          width: double.infinity,
                                          padding: EdgeInsets.all(
                                              size.width * 0.043),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 3),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Text(
                                            e["text"],
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ).toList(),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(60, 60),
                      primary: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: const Icon(Icons.arrow_forward),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
