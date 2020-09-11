import 'package:WhatsApp_UI/model/chat_model.dart';
import 'package:flutter/material.dart';

class chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatsData.length,
      itemBuilder:(context,i)=>new Column(
        children: <Widget>[
          Divider(
            height: 0.1,
          ),
          ListTile(
          leading: CircleAvatar(
              backgroundColor:Colors.grey,
              backgroundImage: NetworkImage(chatsData[i].pic),
            ),
          title: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                chatsData[i].name,
                style: TextStyle(
                  fontSize:13.0,
                  fontWeight:FontWeight.bold,
                ),
              ),
              Text(
                chatsData[i].time,
                style: TextStyle(
                  fontSize:11.0,
                  color: Colors.grey,
                  fontWeight:FontWeight.bold,
                ),

              )
            ],
            
          ),
          subtitle: Text(
            chatsData[i].msg,
                style: TextStyle(
                  fontSize:11.0,
                  fontWeight:FontWeight.bold,
                ),
            
          ),
          ),
          
        ],
      ),
     
    );
  }
}