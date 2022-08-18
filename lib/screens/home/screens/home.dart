import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job/constants/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool value = false;
  final time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> list = [
      {
        "id": 0,
        "image" : "assets/images/apple.svg",
        "title": "Product Designer",
        "subtitle": "Apple inc . California, USA",
        "character": ["Senior designer", "Full time", "Apply"],
        "price" : "15"
      },
      {
        "id": 1,
        "image" : "assets/images/apple.svg",
        "title": "Software Engineer",
        "subtitle": "Google inc . California, USA",
        "character": ["Senior designer", "Full time", "Apply"],
        "price" : "12"
      },
      {
        "id": 2,
        "image" : "assets/images/apple.svg",
        "title": "Product Designer",
        "subtitle": "Google inc . California, USA",
        "character": ["Senior designer", "Full time", "Apply"],
        "price" : "6"
      },
      {
        "id": 3,
        "image" : "assets/images/apple.svg",
        "title": "Product Designer",
        "subtitle": "Google inc . California, USA",
        "character": ["Senior designer", "Full time", "Apply"],
        "price" : "23"
      }
    ];
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          CircleAvatar(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                    "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60")),
          ),
          const SizedBox(
            width: 15,
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 100,
        shadowColor: Colors.transparent,
        foregroundColor: kTextColor,
        title: Text('''
${time.hour >= 5 && time.hour <= 12 ? 'Hayrli tong' : time.hour >= 13 && time.hour <= 20 ? 'Hayrli kun' : 'Hayrli kech'}
Orlando Diggs.'''),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 12, right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 181,
                width: size.width,
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      height: 181,
                      width: size.width,
                      decoration: BoxDecoration(
                          color: kTextColor,
                          borderRadius: BorderRadius.circular(6)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "50% off",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Text(
                                "take any courses",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary:
                                      const Color.fromRGBO(255, 146, 40, 1)),
                              child: const Text("Join Now"))
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 30,
                      child: Transform.scale(
                          scale: 1.5,
                          child: Image.asset(
                            "assets/images/opa.png",
                            height: 145,
                          )),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "Find Your Job",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 170,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 170,
                      alignment: Alignment.center,
                      width: size.width * 0.42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: const Color.fromRGBO(175, 236, 254, 1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/headhunting.png",
                            width: 34,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "44.5k",
                            style: TextStyle(
                                color: kTextColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Remote Job",
                            style: TextStyle(
                              color: kTextColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 170,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 75,
                            width: size.width * 0.45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: const Color.fromRGBO(190, 175, 254, 1),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "66.8k",
                                  style: TextStyle(
                                      color: kTextColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Full Time",
                                  style: TextStyle(
                                    color: kTextColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 75,
                            width: size.width * 0.45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: const Color.fromRGBO(255, 214, 173, 1),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "38.9k",
                                  style: TextStyle(
                                      color: kTextColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Part Time",
                                  style: TextStyle(
                                    color: kTextColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "Recent Job List",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 400,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: CircleAvatar(
                                backgroundColor: Colors.grey[300],
                                child:
                                    SvgPicture.asset(list[index]["image"]),
                              ),
                              title:  Text(list[index]["title"]),
                              subtitle:
                                   Text(list[index]["subtitle"]),
                              trailing: SvgPicture.asset(
                                "assets/images/save.svg",
                                color: const Color.fromRGBO(82, 75, 107, 1),
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                    color: kTextColor,
                                    fontSize: 16,
                                  ),
                                  children: [
                                     TextSpan(
                                        text: "\$${list[index]["price"]}K",
                                        style:const TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: "/Mo",
                                        style: TextStyle(color: kTextColor2)),
                                  ]),
                            ),
                            SizedBox(
                              height: 20,
                              child: ListView.builder(
                                itemCount: list[index]["character"].length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index){
                                return Container(
                                  child: Text(list[index]["character"][index]),
                                );
                              }),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
