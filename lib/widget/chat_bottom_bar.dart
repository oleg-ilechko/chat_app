import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class ChatBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0.0, -1 * MediaQuery.of(context).viewInsets.bottom),
      child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
              height: 60,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(51, 173, 185, 203),
                    blurRadius: 12,
                    offset: Offset(0, -4))
              ]),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  SvgPicture.asset(
                    "assets/icons/sticker.svg",
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          color: HexColor('#E9F0FB'),
                          borderRadius: BorderRadius.circular(18.0)),
                      height: 36,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: SvgPicture.asset(
                              "assets/icons/emoji.svg",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30.0),
                            child: TextField(
                              autofocus: false,
                              style: TextStyle(
                                  fontSize: 15
                              ),
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(vertical: 9),
                                  hintText: "Start Typing",
                                  filled: true,
                                  fillColor: Color.fromARGB(200, 233, 240, 251),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  )),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: SvgPicture.asset(
                              "assets/icons/add.svg",
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
                  SvgPicture.asset(
                    "assets/icons/mic.svg",
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  SvgPicture.asset(
                    "assets/icons/like.svg",
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ))),
    );
  }
}
