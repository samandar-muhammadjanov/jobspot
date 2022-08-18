import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job/constants/constants.dart';
import 'package:job/screens/home/screens/chat.dart';
import 'package:job/screens/home/screens/connection.dart';
import 'package:job/screens/home/screens/home.dart';
import 'package:job/screens/home/screens/save.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = "/home";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      body: currentIndex == 0
          ? const Home()
          : currentIndex == 2
              ? const Chat()
              : currentIndex == 1
                  ? const Connection()
                  : const Save(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: kTextColor,
        elevation: 0,
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
              context: context,
              builder: (context) {
                return Container(
                  padding: const EdgeInsets.only(top: 5),
                  height: size.height * 0.20,
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Container(
                          height: 4,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.grey),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                            padding: const EdgeInsets.all(10),
                            alignment: Alignment.centerLeft,
                            width: size.width,
                            height: size.height * 0.054,
                            child: const Text(
                              "As a worker",
                              style: TextStyle(fontSize: 17),
                            )),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                            padding: const EdgeInsets.all(10),
                            alignment: Alignment.centerLeft,
                            width: size.width,
                            height: size.height * 0.054,
                            child: const Text(
                              "As a finder worker",
                              style: TextStyle(fontSize: 17),
                            )),
                      )
                    ],
                  ),
                );
              });
        },
        child: const Icon(CupertinoIcons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: SizedBox(
          height: size.height * 0.08,
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () => setState(() {
                        setState(() {
                          currentIndex = 0;
                        });
                      }),
                  child: Container(
                    height: size.height * 0.08,
                    width: size.width * 0.25,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/images/home.svg",
                          color: currentIndex == 0 ? kTextColor : Colors.grey,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        currentIndex == 0
                            ? Container(
                                height: 3,
                                width: 3,
                                decoration: BoxDecoration(
                                    color: currentIndex == 0
                                        ? kTextColor
                                        : Colors.transparent,
                                    shape: BoxShape.circle),
                              )
                            : const SizedBox()
                      ],
                    ),
                  )),
              InkWell(
                  radius: 40,
                  onTap: () => setState(() {
                        setState(() {
                          currentIndex = 1;
                        });
                      }),
                  child: Container(
                    height: size.height * 0.08,
                    width: size.width * 0.25,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/images/connection.svg",
                          color: currentIndex == 1
                              ? const Color.fromRGBO(255, 146, 40, 1)
                              : Colors.grey,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        currentIndex == 1
                            ? Container(
                                height: 3,
                                width: 3,
                                decoration: BoxDecoration(
                                    color: currentIndex == 1
                                        ? const Color.fromRGBO(255, 146, 40, 1)
                                        : Colors.transparent,
                                    shape: BoxShape.circle),
                              )
                            : const SizedBox()
                      ],
                    ),
                  )),
              InkWell(
                  radius: 40,
                  onTap: () => setState(() {
                        setState(() {
                          currentIndex = 2;
                        });
                      }),
                  child: Container(
                    height: size.height * 0.08,
                    width: size.width * 0.25,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/images/chat.svg",
                          color: currentIndex == 2
                              ? const Color.fromRGBO(255, 146, 40, 1)
                              : Colors.grey,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        currentIndex == 2
                            ? Container(
                                height: 3,
                                width: 3,
                                decoration: BoxDecoration(
                                    color: currentIndex == 2
                                        ? const Color.fromRGBO(255, 146, 40, 1)
                                        : Colors.transparent,
                                    shape: BoxShape.circle),
                              )
                            : const SizedBox()
                      ],
                    ),
                  )),
              InkWell(
                radius: 40,
                onTap: () => setState(() {
                  setState(() {
                    currentIndex = 3;
                  });
                }),
                child: Container(
                  height: size.height * 0.08,
                  width: size.width * 0.25,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/images/save.svg",
                        color: currentIndex == 3
                            ? const Color.fromRGBO(255, 146, 40, 1)
                            : Colors.grey,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      currentIndex == 3
                          ? Container(
                              height: 3,
                              width: 3,
                              decoration: BoxDecoration(
                                  color: currentIndex == 3
                                      ? const Color.fromRGBO(255, 146, 40, 1)
                                      : Colors.transparent,
                                  shape: BoxShape.circle),
                            )
                          : const SizedBox()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ), 
    );
  }
}
