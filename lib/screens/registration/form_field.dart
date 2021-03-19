import 'package:flutter/material.dart';

class FFRegisterFormField extends StatelessWidget {
  FFRegisterFormField({
    required this.node,
    required this.nextNode,
    required this.validator,
    required this.controller,
    required this.hintText,
    this.inputType = TextInputType.emailAddress,
    this.hasError = false,
    this.errorText,
  });

  final FocusNode node;
  final FocusNode nextNode;
  final FormFieldValidator<String>? validator;
  final TextEditingController controller;
  final String hintText;
  final String? errorText;
  final TextInputType inputType;
  final bool hasError;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        hintText: hintText,
        errorText: errorText,
      ),
      keyboardType: TextInputType.emailAddress,
      validator: validator,
      autocorrect: false,
      focusNode: node,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textInputAction: TextInputAction.next,
      onFieldSubmitted: (body) {
        node.unfocus();
        FocusScope.of(context).requestFocus(nextNode);
      },
    );
  }
}
