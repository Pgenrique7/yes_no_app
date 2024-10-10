import 'package:flutter/material.dart';
import 'package:yes_no_app/config/theme/helpers/yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  final ScrollController scrollController = ScrollController();

  List<Message> messageList =[
    Message(
      text: "hola",
      fromWho: FromWho.me
    ),
    Message(
      text: "hola",
      fromWho: FromWho.me
    )
  ];

  Future<void> sendMessage( String text) async{

    if (text.isEmpty) return;
    messageList.add(Message(text: text, fromWho: FromWho.me));

    if (text.endsWith('?')){
      herReply();
    }
  }


  Future <void> herReply() async{
     final herMessage = await getYesNoAnswer.getAwnser();
     if (herMessage.text.isEmpty) return;
     messageList.add(herMessage);
     
    moveToBottom();
    notifyListeners();
  }

  Future <void> moveToBottom() async{
    await Future.delayed(const Duration(milliseconds: 100));
    scrollController.animateTo(
      scrollController.position.maxScrollExtent ,
      duration: const Duration(microseconds: 300),
      curve: Curves.easeOut,
    );
  }


}