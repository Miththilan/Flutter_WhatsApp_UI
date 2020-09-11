import 'package:WhatsApp_UI/model/status_model.dart';
import 'package:flutter/material.dart';

class status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: <Widget>[
      Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                leading: Container(
                  width: 50,
                  child: Stack(
                    children: <Widget>[
                      ClipOval(
                        child: Image.network(
                            'https://randomuser.me/api/portraits/men/7.jpg'),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: BoxDecoration(
                              color: Theme.of(context).accentColor,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                title: Text(
                  'My Status',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Tab to Add Status',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      SizedBox(
          height: 30.0,
     
          child: Container(
            width: double.infinity,
            color: Colors.grey.shade200,
            padding: EdgeInsets.symmetric(horizontal:10.0,vertical:5.0),
            child: Text(
              'Recent Updates'
            ),
          )
        ),
      Expanded(
        child: ListView.builder(
          itemCount: statusData.length,
          itemBuilder: (context,i)=>Column(
             children: <Widget>[
          Divider(
            height: 0.1,
          ),
          ListTile(
          leading: CircleAvatar(
              backgroundColor:Colors.grey,
              backgroundImage: NetworkImage(statusData[i].pic),
            ),
          title: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                statusData[i].name,
                style: TextStyle(
                  fontSize:13.0,
                  fontWeight:FontWeight.bold,
                ),
              ),
            /*  Text(
                statusData[i].time,
                style: TextStyle(
                  fontSize:11.0,
                  color: Colors.grey,
                  fontWeight:FontWeight.bold,
                ),

              )*/
            ],
            
          ),
          subtitle: Text(
            statusData[i].time,
                style: TextStyle(
                  fontSize:11.0,
                  fontWeight:FontWeight.bold,
                ),
            
          ),
          ),
          
        ],


          )
          ),
          ),
      ],
    );
  }
}
