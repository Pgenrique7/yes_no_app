import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class HermessageBubble extends StatelessWidget {

    final Message message;
    const HermessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration:  BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20)
          ),
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(message.text, style: const TextStyle(color: Colors.white),),
            ),
        ),
        const SizedBox(height: 5,),
        _ImageBubble(imageUrl: message.imageUrl),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget{

    final String? imageUrl;

    const _ImageBubble({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    
      return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network( imageUrl!,
          fit: BoxFit.fill,
        )

        );
  }
}