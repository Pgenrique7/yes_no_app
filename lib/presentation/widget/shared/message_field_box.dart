import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/presentation/provider/chat_provider.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();
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
                chatProvider.sendMessage(TextValue);
                print('Send message + $TextValue');
              },
              icon: const Icon(Icons.send))),
      onFieldSubmitted: (value) {
        chatProvider.sendMessage(value);
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