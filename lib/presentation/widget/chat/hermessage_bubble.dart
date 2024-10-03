import 'package:flutter/material.dart';

class HermessageBubble extends StatelessWidget {
  const HermessageBubble({super.key});

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
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text("zi", style: TextStyle(color: Colors.white),),
            ),
        ),
        const SizedBox(height: 5,),
        const _ImageBubble(),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget{
    const _ImageBubble();

  @override
  Widget build(BuildContext context) {
    
      return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZv6AuyUfL30ecAjb7YqxBL7Ytwt06yccsnA&s',
          fit: BoxFit.fill,
        )

        );
  }
}