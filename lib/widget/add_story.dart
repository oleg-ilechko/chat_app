import 'package:flutter/material.dart';

class AddStoryButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 66,
          child: ElevatedButton(
            onPressed: () {},
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 40.0,
            ),
            style: ElevatedButton.styleFrom(
              shadowColor: Colors.transparent,
              shape: CircleBorder(),
              primary: Colors.lightBlue,
            ),
          ),
        ),
        SizedBox(height: 6,),
        Text("Your Story")
      ],
    );
  }
}
