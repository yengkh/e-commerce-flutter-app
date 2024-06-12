import 'package:flutter/material.dart';

class TextFormFieldHome extends StatefulWidget {
  const TextFormFieldHome({super.key});

  @override
  State<TextFormFieldHome> createState() => _TextFormFieldHomeState();
}

TextEditingController _textValue = TextEditingController();

class _TextFormFieldHomeState extends State<TextFormFieldHome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        autofocus: false,
        controller: _textValue,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 2.0,
              color: Colors.green,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.red,
            ),
          ),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _textValue.clear();
              });
            },
            icon: const Icon(Icons.clear),
          ),
          prefixIcon: const Icon(Icons.search),
          hintText: "Search...",
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
            borderSide: BorderSide(
              color: Colors.green,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
