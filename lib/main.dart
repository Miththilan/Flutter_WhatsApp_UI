import 'package:WhatsApp_UI/tap/call.dart';
import 'package:WhatsApp_UI/tap/camera.dart';
import 'package:WhatsApp_UI/tap/chat.dart';
import 'package:WhatsApp_UI/tap/status.dart';
import 'package:flutter/material.dart';

void main() =>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: new ThemeData(
    primaryColor: new Color(0xff075e54),
    accentColor: new Color(0xff25d366),
  ),
  home: MyApp(),
));


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController=new TabController(length: 4, vsync: this,initialIndex: 1,)
    ..addListener(() {
      setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('WhatsApp'),
        actions: <Widget>[
          IconButton(
            icon:Icon(
              Icons.search,
              color: Colors.white,
              ), 
            onPressed: null),
            IconButton(
            icon:Icon(
              Icons.more_vert,
              color: Colors.white,
              ), 
            onPressed: null),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _tabController,
          tabs:<Widget>[
            Tab(icon:Icon(Icons.camera_alt)),
            Tab(text:'CHATS'),
            Tab(text:'STATUS'),
            Tab(text:'CALL'),


          ],
          
          ),
      ),
      body: TabBarView(
        controller: _tabController,
        children:<Widget>[
        
        new camera(),
        new chat(),
        new status(),
        new call(),
        
      ]),
      floatingActionButton: _tabController.index==0?
      FloatingActionButton(
        child: Icon(
          Icons.camera,
          color:Colors.white,
        ),
        onPressed: (){

        },
        )
      : _tabController.index==1 ?
      FloatingActionButton(
          child: Icon(
            Icons.message,
            color:Colors.white,
          ),
          onPressed: (){

          },
          )
        : _tabController.index==2 ?
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 45.0,
              width: 45.0,
              
                child: FloatingActionButton(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.edit,
                  color:Colors.blueGrey,
                  
                ),
                 onPressed: (){ },  
                ),
            ),
              SizedBox(
                height: 10.0,
              ),
          FloatingActionButton(
              child: Icon(
                Icons.camera_alt,
                color:Colors.white,
              ),
               onPressed: (){ },  
              ),
          ],
        )
        :FloatingActionButton(
          child: Icon(
            Icons.add_call,
            color:Colors.white,
          ),
          onPressed: (){

          },
          )

    );
  }
}