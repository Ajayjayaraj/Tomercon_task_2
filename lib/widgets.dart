import 'package:flutter/material.dart';

class Widget1 extends StatefulWidget {
  const Widget1({Key? key}) : super(key: key);

  @override
  State<Widget1> createState() => _Widget1State();

  static abc(String img, String title, String time, context) {
    return Container(
      margin: const EdgeInsets.only(top: 15.0),
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            img,
            width: MediaQuery.of(context).size.width * 0.25,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.06,
                      fontWeight: FontWeight.bold)),
              Text(time,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.04)),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.1,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.play_circle,
                color: Colors.black,
                size: MediaQuery.of(context).size.width * 0.12),
          ),
        ],
      ),
      width: MediaQuery.of(context).size.width,
      // height: 200,
    );
  }

  static inputdec(var title, var icn) => InputDecoration(
      fillColor: Colors.white,
      filled: true,
      border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.black)),
      focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.cyan)),
      enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.black)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      hintStyle: const TextStyle(
        fontSize: 16,
        color: Colors.grey,
        height: 2.2,
      ),
      prefixIcon: Icon(
        icn,
        size: 20,
        color: Colors.black,
      ),
      contentPadding: const EdgeInsets.all(0),
      isDense: true,
      hintText: "$title");

  static zxc(
    context,
    String img,
    String title,
    String txt,
    void fn()
  ) {
    return Container(
      margin: const EdgeInsets.only(top: 15.0),
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            img,
            width: MediaQuery.of(context).size.width * 0.10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.06,
                      fontWeight: FontWeight.bold)),
              Text(txt,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.04)),
            ],
          ),
          RaisedButton(
            onPressed: () {
              fn();
            },
            color: Colors.cyan,
            child: Text(
              "Continue",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.03,
                  color: Colors.white),
            ),
          )
        ],
      ),
      width: MediaQuery.of(context).size.width,
    );
  }

  static pqr(BuildContext context, String title, String txt, String img1,
      String img2, void fn()) {
    return Container(
      margin: const EdgeInsets.only(top: 15.0),
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.06,
                      fontWeight: FontWeight.bold)),
              RaisedButton(
                onPressed: () {
                  fn();
                },
                color: Colors.cyan,
                child: Text(
                  "Start",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                      color: Colors.white),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                img1,
                width: MediaQuery.of(context).size.width * 0.10,
              ),
              Image.asset(
                img2,
                width: MediaQuery.of(context).size.width * 0.10,
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(txt,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.04)),
        ],
      ),
      width: MediaQuery.of(context).size.width,
    );
  }
}

class _Widget1State extends State<Widget1> {
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
