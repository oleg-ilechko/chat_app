import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {

  String _hint;

  SearchTextField(this._hint);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      style: TextStyle(
        fontSize: 15
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
          hintText: _hint,
          filled: true,
          fillColor: Color.fromARGB(200, 233, 240, 251),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.lightBlue,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          )),
    );
  }
}
