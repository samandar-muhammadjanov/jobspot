import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Jobspot",
        ),
        actions: [
          Icon(
            CupertinoIcons.bell,
            size: 34,
            color: Theme.of(context).primaryColor,
          ),
          const SizedBox(
            width: 6,
          ),
          Icon(
            CupertinoIcons.search,
            size: 34,
            color: Theme.of(context).primaryColor,
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      drawer: drawer(context),
      body: const Center(
      child: Text("Home"),
    ),
    );
  }


  InkWell items(BuildContext context, IconData icon, String text) {
    return InkWell(
      focusColor: Theme.of(context).primaryColor,
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 30,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
  Drawer drawer(BuildContext context) {
    return Drawer(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Theme.of(context).primaryColor,
          automaticallyImplyLeading: false,
          titleSpacing: 25,
          leading: const Icon(
            Icons.account_circle_outlined,
            size: 70,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Maxamadjonov\nSamandar",
                textAlign: TextAlign.left,
              ),
              Text(
                "ID: 172623",
                style: TextStyle(fontSize: 14),
              )
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            items(context, CupertinoIcons.settings, "Sozlamalar"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(
                        CupertinoIcons.moon_fill,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Tungi rejim",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  CupertinoSwitch(
                      value: value,
                      onChanged: (v) {
                        setState(() {
                          value = v;
                        });
                      }),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Container(
              padding: const EdgeInsets.only(left: 20, bottom: 10),
              alignment: Alignment.centerLeft,
              width: double.infinity,
              height: 50,
              child: Row(
                children: const [
                  Icon(Icons.info_outline),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "Jobspot 1.0.0",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
