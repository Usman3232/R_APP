import 'package:flutter/material.dart';
import 'package:r_app/utils/constants.dart';

class SelectOutletFields extends StatefulWidget {
  final Color textColor;
  final String? labelText;
  final String hintText;
  final double? hintSize;
  final Color hintcolor;
  final Color bordercolor;
  final double radius;
  final bool isPassword;
  final Color fillColor;
  final Color cursorColor;
  final TextEditingController? textEditingController;
  final TextInputType inputType;
  final suffixIcon;
  final prefixIcon;
  final enabled;

  const SelectOutletFields({
    Key? key,
    required this.hintText,
    this.textEditingController,
    this.isPassword = false,
    this.hintSize,
    this.hintcolor = Colors.grey,
    this.fillColor = Colors.transparent,
    this.textColor = Colors.black,
    this.cursorColor = Colors.black,
    this.inputType = TextInputType.text,
    this.suffixIcon,
    this.prefixIcon,
    this.enabled,
    this.labelText,
    this.radius = 10,
    this.bordercolor = Colors.black,
  }) : super(key: key);

  @override
  State<SelectOutletFields> createState() => _TextInputFieldViewState();
}

class _TextInputFieldViewState extends State<SelectOutletFields> {
  bool isObscure = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isObscure = widget.isPassword == true;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: widget.enabled,
      obscureText: isObscure,
      style: TextStyle(color: widget.textColor),
      controller: widget.textEditingController,
      keyboardType: widget.inputType,
      decoration: InputDecoration(
          filled: true,
          fillColor: widget.fillColor,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.radius),
              borderSide: BorderSide(color: widget.bordercolor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.radius),
              borderSide: BorderSide(color: widget.bordercolor)),
          hintText: widget.hintText,
          hintStyle:
              TextStyle(fontSize: widget.hintSize, color: widget.hintcolor),
          suffixIcon: Container(
            height: 16,
            width: 16,
            margin: EdgeInsets.all(15),
            child: Image.asset(widget.suffixIcon),
          )),
      cursorColor: widget.cursorColor,
    );
  }
}
