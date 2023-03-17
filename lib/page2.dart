import 'package:flutter/material.dart';

// import 'package:flutterui/models/chat_data.dart';
import 'package:wp/homepage.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: ChatData.content.length,
        itemBuilder: (context, index) {
          return ListTile(
              visualDensity: VisualDensity(vertical: 4),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  ChatData.content[index].imageUrl,
                ),
                radius: 25.0,
              ),
              title: Text(ChatData.content[index].name,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
              subtitle: Text(ChatData.content[index].chat,
                  style: TextStyle(color: Color(0xFF89929a), fontSize: 15)),
              trailing: Text(ChatData.content[index].date,
                  style: TextStyle(color: Color(0xFF89929a), fontSize: 12)));
          });}}