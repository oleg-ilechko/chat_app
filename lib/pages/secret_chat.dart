import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class SecretChat extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: SizedBox(
              width: 48,
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                child: SizedBox(
                  child: SvgPicture.asset(
                    "assets/icons/private_chat.svg",
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.transparent,
                  primary: HexColor("#E9F0FB"),
                  padding: EdgeInsets.only(left: 5)
                )
              ),
            ),
          ),
          SizedBox(width: 12,),
          Expanded(
            child: Text(
              "Secret Chat",
              style: TextStyle(color: HexColor("#006AFF"), fontWeight: FontWeight.w500),
            ),
          ),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
