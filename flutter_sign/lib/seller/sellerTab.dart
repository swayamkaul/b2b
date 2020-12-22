import 'package:flutter/material.dart';
import 'package:flutter_sign/seller/analysis.dart';
import 'package:flutter_sign/seller/sellerHome.dart';
import 'package:flutter_sign/seller/sellerNotifications.dart';
import 'package:flutter_sign/seller/sellOnBTG.dart';


class SellerTab extends StatefulWidget {
  @override
  _SellerTabState createState() => _SellerTabState();
}

class _SellerTabState extends State<SellerTab> {
  int selectedIndex = 0;
  final List<Widget> tabpages = [
    SellerHome(),
    SellerAnalysis(),
    SellerNotifications()
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("AppName"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                Colors.orange[500],
                  Colors.orange[600],
                  Colors.orange[600],
                  Colors.orange[700],
            ])          
         )       
          ,),
      ),
      drawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: ListTile(leading: ClipRRect(borderRadius: BorderRadius.circular(100), child: Image(image:AssetImage("assets/pf.png"))),title: Text("Abcd name"),subtitle: Text("Level 10 Ninja"),)),
          ListTile(title:Text("My Profile")),
           ListTile(title:Text("Sell On Btg"),
           onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => SellOnBTG()),);
           },
           ),
          ListTile(title:Text("My Transactions")),
          ListTile(title:Text("Notifications")),
          ListTile(title:Text("Strategy Video")),
          ListTile(title:Text("Payment Options")),
          ListTile(title:Text("Settings")),
          ListTile(title:Text("Invite to earn")),
          ListTile(title:Text("Customer Support")),
            ListTile(title:Text("Logout"),
             onTap: () async{
             
             },),

        ],)
    ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.orange[400],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home"),
          BottomNavigationBarItem(icon: Icon(Icons.analytics),label:"Analysis"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label:"Notifications"),
        ],),

      body: tabpages.elementAt(selectedIndex),
    );
  }
}