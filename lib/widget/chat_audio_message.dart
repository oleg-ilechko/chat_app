import 'package:chat_app/widget/avatar.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class ChatAudioMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 90),
      child: Container(
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Avatar(
              AssetImage(
                "assets/avatars/5.jpg",
              ),
              type: AvatarType.Chat,
              active: true,
              hasMessage: true,
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 15),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: SvgPicture.asset(
                        "assets/chat/chat_bottom.svg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 2),
                    child: Container(
                      width: 198,
                      decoration: BoxDecoration(
                        color: HexColor("#DCE7FF"),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                          bottomLeft: Radius.circular(24),
                          bottomRight: Radius.circular(24),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/play.svg'),
                            SizedBox(width: 5,),
                            SvgPicture.asset('assets/timeline.svg'),
                            SizedBox(width: 5,),
                            Text('1:21', style: TextStyle(color: HexColor('#2A87FF')),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
