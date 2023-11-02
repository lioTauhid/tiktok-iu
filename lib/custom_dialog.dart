import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok_ui/value.dart';

import 'app_color.dart';

Future<void> showCustomDialog(BuildContext context, String title, Widget widget,
    int heightReduce, int widthReduce) async {
  showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
          // backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.zero,
          child: Container(
            width: MediaQuery.of(context).size.width - widthReduce,
            height: MediaQuery.of(context).size.height - heightReduce,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: primaryBackground,
            ),
            child: Column(
              children: [
                // dialogHeader(title, context),
                // Divider(color: textSecondary, thickness: 1),
                // const SizedBox(height: 10),
                Expanded(
                  child: widget,
                ),
              ],
            ),
          ));
    },
  );
}

Widget dialogHeader(String title, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: textPrimary),
        ),
        IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.close,
            color: textSecondary,
          ),
        ),
      ],
    ),
  );
}

Widget replyView(BuildContext context, {Function()? onPressed}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        dialogHeader("Comments", context),
        SizedBox(
          height: 200,
          child: ListView.builder(
              itemCount: 1,
              itemBuilder: (ctx, i) {
                return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                Image.asset("assets/Ellipse 8.png"),
                                Container(
                                  color: textSecondary,
                                  width: 2,
                                  height: 150,
                                )
                              ],
                            )),
                        Expanded(
                          flex: 5,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Kerry Johns",
                                    style: TextStyle(
                                        fontSize: fontMedium,
                                        color: textPrimary),
                                  ),
                                  const Text(
                                    "  @Kerryjo",
                                    style: TextStyle(
                                        fontSize: fontMedium,
                                        color: Colors.blue),
                                  ),
                                  const Expanded(
                                      child: SizedBox(width: double.maxFinite)),
                                  const Text("3 hours ago")
                                ],
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "Lorem ipsum dolor sit amet consectetur. Aliquam sagittis ullamcorper      amet justo quisque          ullamcorper volutpat. Donec feugiat diam et tellus in habitant viverra duis. ",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: fontSmall, color: textSecondary),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    "Replying to",
                                    style: TextStyle(
                                        fontSize: fontSmall,
                                        color: textSecondary,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    " John Doe @JohntheD",
                                    style: TextStyle(
                                        fontSize: fontSmall,
                                        color: primaryColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                            ],
                          ),
                        ),
                      ],
                    ));
              }),
        ),
        Divider(color: textSecondary, thickness: 0.5),
        SizedBox(
            height: AppBar().preferredSize.height,
            child: Row(
              children: [
                SizedBox(width: 10),
                Image.asset("assets/Ellipse 1492.png"),
                SizedBox(width: 6),
                Expanded(
                  child: TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          fillColor: primaryBackground,
                          filled: true,
                          suffixIcon: IconButton(
                            icon: const Icon(
                              Icons.send,
                              color: Colors.blue,
                            ),
                            onPressed: () {},
                          ),
                          prefixIcon: IconButton(
                            icon: Image.asset("assets/Group2.png"),
                            onPressed: () {},
                          ),
                          hintText: ('White comment here...'),
                          hintStyle: TextStyle(color: textSecondary),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide:
                                  BorderSide(width: 0.5, color: textSecondary)),
                          contentPadding: const EdgeInsets.only(left: 10))),
                ),
              ],
            )),
        Expanded(child: Image.asset("assets/image 100.png"))
      ],
    ),
  );
}
