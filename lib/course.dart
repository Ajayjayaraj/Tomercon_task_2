import 'package:flutter/material.dart';

import 'widgets.dart';

class Course extends StatefulWidget {
  const Course({Key? key}) : super(key: key);

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Flutter",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'SFUIDisplay',
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    const TabBar(
                      labelColor: Colors.black,
                      indicatorColor: Colors.cyan,
                      tabs: [
                        Tab(text: "Chapters"),
                        Tab(text: "Practice"),
                        Tab(text: "Test"),
                      ],
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height,
                        child: TabBarView(children: [
                          ListView(
                            children: [
                              Widget1.abc('images/inst.jpg', "Installation",
                                  "10:30", context),
                              Widget1.abc('images/bas.png', "Dart Basic",
                                  "15:10", context),
                              Widget1.abc('images/ui.jpg', "UI Basics", "8:12",
                                  context),
                            ],
                          ),
                          ListView(
                            children: [
                              Widget1.pqr(context, "Login Page UI",
                                  "Estimated time : 1 day", "images/luii.jpg", "images/luii.jpg", (){}),
                            ],
                          ),
                          ListView(
                            children: const [
                              Center(
                                child: Text("Coming soon"),
                              ),
                            ],
                          ),
                        ]))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
