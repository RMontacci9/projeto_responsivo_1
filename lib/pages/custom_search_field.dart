import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.blue,
      style: TextStyle(color: Colors.blue),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)
        ),
        hintStyle: TextStyle(color: Colors.white),
        hintText: "Digite alguma coisa aqui",
        suffixIcon: IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
          color: Colors.white,
        )
      ),
    );
  }
}
