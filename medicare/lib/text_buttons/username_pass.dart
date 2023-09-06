import 'package:flutter/material.dart';
import 'package:medicare/constants/colors.dart';

class UsernamePasswordInput extends StatefulWidget {
  final String hintText;
  final bool obscureText;

  const UsernamePasswordInput({
    Key? key,
    required this.hintText,
    this.obscureText = false,
  }) : super(key: key);

  @override
  _UsernamePasswordInputState createState() => _UsernamePasswordInputState();
}

class _UsernamePasswordInputState extends State<UsernamePasswordInput> {
  late TextEditingController _textEditingController;
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: mainColor,
      ),
      child: TextField(
        controller: _textEditingController,
        obscureText: _obscureText,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 20,
          ),
          border: InputBorder.none,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            icon: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
              color: Colors.white,
            ),
          ),
        ),
        textAlignVertical: TextAlignVertical.center,
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}
