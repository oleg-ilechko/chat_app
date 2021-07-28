import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(51, 173, 185, 203),
                blurRadius: 12,
                offset: Offset(0, -4)
              )
            ]
          ),
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
                  child: Container(
                    height: 60,
                    width: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          size: 30.0,
                          color: 0 == _activeIndex ? Colors.lightBlue : Colors.grey,
                        ),
                        Text("Chats", style: TextStyle(color: 0 == _activeIndex ? Colors.black : Colors.grey),)
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
                    height: 60,
                    width: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                            "assets/icons/phone.svg"
                        ),
                        Text("Calls", style: TextStyle(color: 1 == _activeIndex ? Colors.black : Colors.grey),)
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
                    height: 60,
                    width: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                            "assets/icons/people.svg"
                        ),
                        Text("People", style: TextStyle(color: 2 == _activeIndex ? Colors.black : Colors.grey),)
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
                    height: 60,
                    width: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Avatar(
                          AssetImage(
                            "assets/avatars/0.jpg",
                          ),
                          type: AvatarType.Small,
                        ),
                        Text("Profile", style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  )),
            ],
          )),
    );
  }
}
