import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job/constants/constants.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(
            flex: 2,
          ),
          SvgPicture.asset("assets/images/nomessage.svg"),
          const Spacer(),
          Text(
            "No Message",
            style: TextStyle(
                color: kTextColor, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "You currently have no incoming messages\nthank you",
            textAlign: TextAlign.center,
            style: TextStyle(color: kTextColor2),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: kTextColor,
                elevation: 0,
                shadowColor: Colors.transparent,
                minimumSize: Size(size.width * 0.7, size.height * 0.07)),
            child: Text(
              "Create a message".toUpperCase(),
            ),
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
