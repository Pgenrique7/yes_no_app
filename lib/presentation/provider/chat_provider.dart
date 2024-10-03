import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

  List<Message> message =[
    Message(
      text: "Ella",
      fromWho: FromWho.hers
    ),
    Message(
      text: "Él",
      fromWho: FromWho.me
    )
  ];

  Future<void> sendMessage( String text) async{
    message.add(Message(text: text, fromWho: FromWho.me));
    notifyListeners();
  }

}