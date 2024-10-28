import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        style: const TextStyle(
          color: Colors.black,
        ),
        onChanged: (value) {},
        decoration: const InputDecoration(
          filled: true,
          hintText: "Search product",
          prefixIcon: Icon(Icons.search),
          hintStyle: TextStyle(color: Colors.black),

          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
          // border
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
