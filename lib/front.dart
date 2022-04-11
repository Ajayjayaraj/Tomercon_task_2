import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final slider_img = [
    'images/ai.jpg',
    'images/ml.jpg',
    'images/cpp.png',
  ];
  int activeindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Image(
            image: AssetImage('images/flu.jpg'),
          ),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'Tutorial App',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'SFUIDisplay',
            fontSize: 20,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          margin: const EdgeInsets.all(15.0),
                          padding: const EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.cyan)),
                          child: Column(
                            children: const [
                              Text("Welcome User",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                              Text("12 Courses Completed",
                                  style: TextStyle(fontSize: 20)),
                            ],
                          ),
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),
                      Column(
                        children: [
                          CarouselSlider.builder(
                            itemCount: slider_img.length,
                            itemBuilder: (context, index, realindex) {
                              final assimg = slider_img[index];
                              return Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                color: Colors.grey,
                                child: Image.asset(assimg, fit: BoxFit.cover),
                              );
                            },
                            options: CarouselOptions(
                                autoPlay: true,
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    activeindex = index;
                                  });
                                }),
                          ),
                          const SizedBox(height: 10),
                          AnimatedSmoothIndicator(
                              activeIndex: activeindex,
                              effect: const WormEffect(
                                activeDotColor: Colors.cyan,
                                dotColor: Colors.grey,
                                dotHeight: 10,
                                dotWidth: 10,
                                spacing: 10,
                              ),
                              count: slider_img.length),
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05),
                      const Text("Courses",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      DefaultTabController(
                          length: 2,
                          child: Column(
                            children: [
                              const TabBar(
                                labelColor: Colors.black,
                                indicatorColor: Colors.cyan,
                                tabs: [
                                  Tab(text: "Purchased"),
                                  Tab(text: "All"),
                                ],
                              ),
                              Container(
                                  height:
                                      MediaQuery.of(context).size.height,
                                  child: TabBarView(children: [
                                    ListView(
                                      children: [
                                        Widget1.zxc(context, 'images/flu.jpg', "Flutter", "3/14 Courses Completed", "/course"),
                                      ],
                                    ),
                                    const Center(
                                      child: Text("Coming soon"),
                                    ),
                                  ]))
                            ],
                          )),
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
