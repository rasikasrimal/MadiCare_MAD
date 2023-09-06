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
      child: Row(
        children: [
          if (widget.hintText == 'Password' ||
              widget.hintText ==
                  'Re-Enter Your Password') // Corrected condition
            const Icon(
              Icons.lock,
              color: Colors.white,
            ),
          if (widget.hintText == 'Username' ||
              widget.hintText == 'email') // Corrected condition
            const Icon(
              Icons.person,
              color: Colors.white,
            ),
          const SizedBox(width: 10),
          Expanded(
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
                suffixIcon: (widget.obscureText &&
                        (widget.hintText == 'Password' ||
                            widget.hintText ==
                                'Re-Enter Your Password')) // Corrected condition
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.white,
                        ),
                      )
                    : null,
              ),
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}
