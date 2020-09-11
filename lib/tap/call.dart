import 'package:WhatsApp_UI/model/call_model.dart';
import 'package:flutter/material.dart';

class call extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
       itemCount: callData.length,
      itemBuilder:(context,i)=>new Column(
        children: <Widget>[
          Divider(
            height: 0.1,
          ),
          ListTile(
          leading: CircleAvatar(
              backgroundColor:Colors.grey,
              backgroundImage: NetworkImage(callData[i].pic),
            ),
          title: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                callData[i].name,
                style: TextStyle(
                  fontSize:13.0,
                  fontWeight:FontWeight.bold,
                ),
              ),

              Icon(
                i%2==0?Icons.call:Icons.video_call,
                color:Theme.of(context).primaryColor,
              )
          
            ],
            
          ),
          subtitle:Text(
                callData[i].time,
                style: TextStyle(
                  fontSize:12.0,
                  color: Colors.grey,
                  fontWeight:FontWeight.bold,
                ),

              ) ,
         
          ),
          
        ],
      ),
     
        
      );
  }
}