import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'avatar.dart';

class BottomBar extends StatelessWidget {
  int _activeIndex = 0;

  BottomBar(this._activeIndex);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Container(
          height: 60,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                color: Color.fromARGB(51, 173, 185, 203),
                blurRadius: 12,
                offset: Offset(0, -4))
          ]),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 6.0, top: 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'chat_list');
                    },
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.transparent,
                      shape: CircleBorder(),
                      primary: Colors.transparent,
                    ),
                    child: getChatButton()),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.transparent,
                      shape: CircleBorder(),
                      primary: Colors.transparent,
                    ),
                    child: Container(
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: SvgPicture.asset("assets/icons/phone.svg"),
                          ),
                          Text(
                            "Calls",
                            style: TextStyle(
                                color: _activeIndex == 1
                                    ? Colors.black
                                    : Colors.grey, fontSize: 13),
                          )
                        ],
                      ),
                    )),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'user_list');
                    },
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.transparent,
                      shape: CircleBorder(),
                      primary: Colors.transparent,
                    ),
                    child: Container(
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: _activeIndex == 2 ? SvgPicture.asset("assets/icons/people.svg")
                                : SvgPicture.asset("assets/icons/people_inactive.svg"),
                          ),
                          Text(
                            "People",
                            style: TextStyle(
                                color: _activeIndex == 2
                                    ? Colors.black
                                    : Colors.grey, fontSize: 13),
                          )
                        ],
                      ),
                    )),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.transparent,
                      shape: CircleBorder(),
                      primary: Colors.transparent,
                    ),
                    child: Container(
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Avatar(
                              AssetImage(
                                "assets/avatars/0.jpg",
                              ),
                              type: AvatarType.Small,
                            ),
                          ),
                          Text(
                            "Profile",
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          )),
    );
  }

  Widget getChatButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Container(
        width: 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: 40,
                  child: _activeIndex == 0 ? SvgPicture.asset('assets/icons/chat.svg')
                      : SvgPicture.asset('assets/icons/chat_inactive.svg'),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    width: 18,
                    height: 14,
                    decoration: BoxDecoration(
                      color: _activeIndex == 0 ? HexColor("#2A87FF") : HexColor("#9BA5BF"),
                      border: Border(
                        top: BorderSide(width: 1.0, color: Color(0xFFFFFFFF)),
                        left: BorderSide(width: 1.0, color: Color(0xFFFFFFFF)),
                        right: BorderSide(width: 1.0, color: Color(0xFFFFFFFF)),
                        bottom: BorderSide(width: 1.0, color: Color(0xFFFFFFFF)),
                      ),
                      borderRadius: BorderRadius.circular(7.0)
                    ),
                    child: Center(child: Text('10', style: TextStyle(color: Colors.white, fontSize: 10),)),
                  ),
                ),
              ],
            ),
            Text(
              "Chats",
              style: TextStyle(
                  color: _activeIndex == 0 ? Colors.black : Colors.grey, fontSize: 13),
            )
          ],
        ),
      ),
    );
  }
}
