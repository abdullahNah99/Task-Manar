import 'package:flutter/material.dart';
import 'package:task_manar_app/core/utils/size_config.dart';

class CustomTextField extends StatelessWidget {
  final double? width;
  final String? hintText, labelText;
  final Widget? suffixIcon;
  final IconData? prefixIcon;
  final void Function()? suffixIconOnTap;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final int? maxLines;
  final int? maxLength;
  final String? initialValue;
  final bool autofocus;
  final TextInputAction? textInputAction;
  const CustomTextField({
    super.key,
    this.width,
    this.hintText,
    this.suffixIconOnTap,
    this.suffixIcon,
    this.prefixIcon,
    this.labelText,
    this.onChanged,
    this.validator,
    this.keyboardType,
    this.obscureText,
    this.maxLines,
    this.initialValue,
    this.autofocus = false,
    this.maxLength,
    this.textInputAction,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? SizeConfig.defaultSize * 39,
      child: TextFormField(
        autofocus: autofocus,
        initialValue: initialValue,
        textInputAction: textInputAction,
        obscureText: obscureText ?? false,
        keyboardType: keyboardType,
        maxLines: maxLines,
        maxLength: maxLength,
        validator: validator ??
            (value) {
              if (value?.isEmpty ?? true) {
                return 'required';
              }
              return null;
            },
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          labelStyle: const TextStyle(fontSize: 22),
          prefixIcon: prefixIcon != null
              ? Icon(
                  prefixIcon,
                  color: Colors.black,
                )
              : null,
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
