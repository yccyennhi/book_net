import 'package:book_net/views/base_widgets/text_field/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    Key? key,
    required String text,
    required TextEditingController controller,
    this.width = double.infinity,
    this.suffixIcon,
    required String? Function(String?)? validator,
  })  : _text = text,
        _controller = controller,
        _validator = validator,
        super(key: key);

  final double width;
  final String _text;
  final TextEditingController _controller;
  final String? Function(String?)? _validator;
  final Widget? suffixIcon;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: widget._controller,
      text: widget._text,
      validator: widget._validator,
      osbcure: _obscureText,
      suffixIcon: IconButton(
        onPressed: () => setState(() => _obscureText = !_obscureText),
        icon: Image.asset(
          _obscureText ? 'assets/icons/eye.png' : 'assets/icons/eye-cross.png',
          width: 20.w,
          height: 20.h,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
