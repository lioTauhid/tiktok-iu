import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok_ui/app_color.dart';
import 'package:tiktok_ui/value.dart';

import 'comment.dart';
import 'dashboard.dart';
import 'drawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

RxBool bottomVisible = true.obs;

class _HomeState extends State<Home> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  double peraHeight = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: primaryBackground,
        toolbarHeight: 36,
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: MaterialButton(
          onPressed: () {},
          child: Row(
            children: [
              Image.asset("assets/Group 946.png"),
              const SizedBox(width: 8),
              Text(
                "SeeQul",
                style: TextStyle(color: textSecondary),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: textSecondary,
              )
            ],
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Image.asset("assets/Vector.png")),
          IconButton(onPressed: () {}, icon: Image.asset("assets/Group.png")),
          const SizedBox(width: 20)
        ],
      ),
      drawer: sideDrawer(context),
      drawerScrimColor: Colors.transparent,
      body: Container(
        height: Size.infinite.height,
        width: Size.infinite.width,
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image 163.png"), fit: BoxFit.fill)),
        child: Stack(
          children: [
            bottomVisible.value
                ? Positioned(
                    bottom: 10,
                    right: -5,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          if (bottomVisible.value) {
                            bottomVisible.value = false;
                          } else {
                            bottomVisible.value = true;
                          }
                        });
                      },
                      padding: EdgeInsets.zero,
                      icon: Image.asset("assets/Group 4238.png",
                          fit: BoxFit.fill),
                    ),
                  )
                : Positioned(
                    bottom: 20,
                    left: -5,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          if (bottomVisible.value) {
                            bottomVisible.value = false;
                          } else {
                            bottomVisible.value = true;
                          }
                        });
                      },
                      padding: EdgeInsets.zero,
                      icon: Image.asset("assets/Group 42382.png",
                          fit: BoxFit.fill),
                    ),
                  ),
            Visibility(
              visible: bottomVisible.value,
              child: Positioned(
                top: 10,
                child: MaterialButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  child: Image.asset("assets/Group 4244.png"),
                ),
              ),
            ),
            Visibility(
              visible: bottomVisible.value,
              child: Positioned(
                  bottom: 60,
                  right: -0,
                  child: Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/Ellipse 48.png",
                              height: 32, width: 32, fit: BoxFit.fill),
                          padding: EdgeInsets.zero),
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/Group 602.png",
                              height: 30, width: 30, fit: BoxFit.fill),
                          padding: EdgeInsets.zero),
                      IconButton(
                          onPressed: () {
                            showModalBottomSheet<void>(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25)),
                              ),
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height: MediaQuery.of(context).size.height,
                                  child: const Center(child: Comments()),
                                );
                              },
                            );
                          },
                          icon: Image.asset("assets/Group 613.png",
                              height: 45, width: 30, fit: BoxFit.fill),
                          padding: EdgeInsets.zero),
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/Group 612.png",
                              height: 45, width: 30, fit: BoxFit.fill),
                          padding: EdgeInsets.zero),
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/Vector (1).png",
                              height: 30, width: 30, fit: BoxFit.fill),
                          padding: EdgeInsets.zero),
                    ],
                  )),
            ),
            Visibility(
              visible: bottomVisible.value,
              child: Positioned(
                  bottom: 20,
                  left: 16,
                  right: 52,
                  child: Container(
                    height: peraHeight,
                    padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                    decoration: BoxDecoration(
                        color: alternate,
                        border: Border.all(color: textSecondary),
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        peraHeight == 400
                            ? MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    peraHeight = 150;
                                  });
                                },
                                padding: EdgeInsets.zero,
                                child: Image.asset("assets/Group 4236 (1).png"))
                            : const SizedBox(),
                        const Expanded(
                          child: Text(
                            "Lorem ipsum dolor sit amet consectetur. Eget aenean integer amet sapien arcu urna turpis amet elementum. A nec euismod in quam venenatis. Consectetur et nunc amet mattis dui imperdiet tempus. Et aliquet gravida posuere pretium donec diam nibh sed. Pharetra non vitae urna aliquet egestas. Phasellus at id adipiscing eget. Lorem volutpat dolor lorem pharetra nunc duis lorem integer. Magna in pellentesque pretium elementum suspendisse tincidunt fermentum praesent.",
                            style: TextStyle(color: white, fontSize: fontSmall),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "27 Oct. 2020 @5:23pm",
                              style: TextStyle(color: accentColor),
                            ),
                            peraHeight == 150
                                ? MaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        peraHeight = 400;
                                      });
                                    },
                                    padding: EdgeInsets.zero,
                                    child: Image.asset(
                                      "assets/Group 4236.png",
                                    ))
                                : const SizedBox(
                                    height: 50,
                                  )
                          ],
                        )
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
