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
        onPressed: () {},
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
                    radius: 40,
                    onTap: () => setState(() {
                          setState(() {
                            currentIndex = 0;
                          });
                        }),
                    child: Container(
                      height: size.height * 0.08,
                      width: size.width * 0.25,
                      alignment: Alignment.center,
                      child: SvgPicture.asset("assets/images/home.svg",
                          color: currentIndex == 0 ? kTextColor : Colors.grey),
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
                      child: SvgPicture.asset("assets/images/connection.svg",
                          color: currentIndex == 1 ? const Color.fromRGBO(255, 146, 40, 1) : Colors.grey),
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
                      child: SvgPicture.asset("assets/images/chat.svg",
                          color: currentIndex == 2 ? const Color.fromRGBO(255, 146, 40, 1) : Colors.grey),
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
                      child: SvgPicture.asset("assets/images/save.svg",
                          color: currentIndex == 3 ? const Color.fromRGBO(255, 146, 40, 1) : Colors.grey),
                    )),
              ],
            ),
          )),
    );
  }

}
