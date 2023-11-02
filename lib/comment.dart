import 'package:flutter/material.dart';
import 'package:tiktok_ui/app_color.dart';
import 'package:tiktok_ui/value.dart';

import 'custom_dialog.dart';

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  State<Comments> createState() => _CommentState();
}

class _CommentState extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
            height: 30,
            width: 150,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: textSecondary,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: const Text(
              '45k Comments',
              style: TextStyle(color: white),
            )),
        const SizedBox(height: 8),
        SizedBox(
          height: 350,
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (ctx, i) {
                return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/Ellipse 8.png"),
                            const SizedBox(width: 10),
                            Text(
                              "Kerry Johns",
                              style: TextStyle(
                                  fontSize: fontMedium, color: textPrimary),
                            ),
                            const Text(
                              "  @Kerryjo",
                              style: TextStyle(
                                  fontSize: fontMedium, color: Colors.blue),
                            ),
                            const Expanded(
                                child: SizedBox(width: double.maxFinite)),
                            const Text("3 hours ago")
                          ],
                        ),
                        const SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.only(left: 45),
                          child: Text(
                            "Lorem ipsum dolor sit amet consectetur. Aliquam sagittis ullamcorper      amet justo quisque          ullamcorper volutpat. Donec feugiat diam et tellus in habitant viverra duis. ",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: fontSmall, color: textSecondary),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Row(
                            children: [
                              MaterialButton(
                                elevation: 0,
                                onPressed: () {
                                  showCustomDialog(
                                      context,
                                      "Comments",
                                      replyView(context, onPressed: () {}),
                                      0,
                                      0);
                                },
                                height: 30,
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: Image.asset("assets/Group 4261.png"),
                              ),
                              MaterialButton(
                                elevation: 0,
                                onPressed: () {},
                                height: 30,
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: Image.asset("assets/Group 4262.png"),
                              ),
                              MaterialButton(
                                elevation: 0,
                                onPressed: () {},
                                height: 30,
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: Image.asset("assets/Vector (10).png"),
                              ),
                            ],
                          ),
                        ),
                        MaterialButton(
                            elevation: 0,
                            onPressed: () {},
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: const Text(
                              "View 15 replies",
                              textAlign: TextAlign.start,
                            )),
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
      ],
    );
  }
}
