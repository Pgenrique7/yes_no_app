import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final focusNode = FocusNode();
    final textcontroller = TextEditingController();
    final colors = Theme.of(context).colorScheme;
    return TextFormField(
      focusNode: focusNode,
      controller: textcontroller,
      decoration: InputDecoration(
          hintText: 'End your message with a "??"',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: colors.primary),
          ),
          filled: true,
          suffixIcon: IconButton(
              onPressed: () {
                final TextValue = textcontroller.value.text;
                print('Send message + $TextValue');
              },
              icon: const Icon(Icons.send))),
      onFieldSubmitted: (value) {
        print("Submit $value");
        textcontroller.clear();
        focusNode.requestFocus();
      },
      onChanged: (value) {
        print("Changed $value");
      },
    );
  }
}