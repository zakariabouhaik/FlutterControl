import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page",
        style: TextStyle(color: Colors.white , fontSize: 30),
        ), 

        centerTitle: true,
        backgroundColor: Colors.brown),
      drawer: Drawer(child: ListView(padding: EdgeInsets.zero,children: [
        DrawerHeader(
          decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topRight, end: Alignment.topLeft, colors: [Colors.brown,Colors.blue]), color: Colors.orangeAccent),
          child: Column( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(backgroundImage: AssetImage('assets/images/1728129780449.jpeg'),radius: 40,),
              Text("manouni rojola" , style: TextStyle(color: Colors.white),),
              Text("manounirojola@data.com",style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        ListTile(leading: Icon(Icons.home),title: Text('COVID Tracker'),onTap:(){ 
          Navigator.pop(context);
        } ),

        Divider(height: 2,color:  Colors.black),

        ListTile( leading: Icon(Icons.chat_bubble_outline),title: Text('Emsi chatBot'),onTap: () {
          Navigator.pop(context);
        }, ),

        Divider(height: 2,color: Colors.black,),

        ListTile(leading: Icon(Icons.home), title:Text('Profile') ,onTap: () {
          Navigator.pop(context);
        },),

         Divider(height: 2,color: Colors.black,),


        ListTile(leading: Icon(Icons.settings),title: Text('Settings'),onTap: (){
          Navigator.pop(context);
        },),

         Divider(height: 2,color: Colors.black,),

         ListTile(leading: Icon(Icons.logout),title: Text('logout'),onTap: (){
          Navigator.pop(context);
        },),


      ],),),

      body: Center(
        child: Text("Welcome to home page !", style: TextStyle(fontSize: 30 ,color: Colors.brown)),
      ),



    );
  }
}