import 'package:flutter/material.dart';
import 'package:yesnoapp/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{
  List<Message> message = [
    Message(text: 'Hola que tal', fromWho: FromWho.me),
    Message(text: 'Ya regresate?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage (String text) async{
    //TODO: implementar metedo
  }
}