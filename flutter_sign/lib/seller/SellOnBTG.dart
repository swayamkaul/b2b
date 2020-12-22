import 'package:flutter/material.dart';
import 'package:flutter_sign/seller/SellProductDesc.dart';
import 'package:flutter_sign/seller/sellerTab.dart';

class SellOnBTG extends StatelessWidget{
  
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
      body:
      Center(
        child: Column(
         mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            
            Container(

              child: RaisedButton(onPressed: () {},
                          child: Text('Upload Image*', 
                          style: TextStyle(fontSize: 20)),
                          color: Colors.orange
              ),
            ),
             SizedBox(height: 50,),
           
            RaisedButton(onPressed: () {},
                          child: Text('Upload Brochure', 
                          style: TextStyle(fontSize: 20),
                          // color: Colors.white
                          ),
                          color: Colors.orange,

            ),
             SizedBox(height: 50,),
            RaisedButton(onPressed: () {},
                          child: Text('Upload Video', 
                          style: TextStyle(fontSize: 20)),
                          color: Colors.orange,

            ),
              SizedBox(height: 100,),
               RaisedButton(onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => SellProductDesc()),);
               },
                          child: Text('Next', 
                          style: TextStyle(fontSize: 20)),
                          color: Colors.orange,

            ),

          ],
        ),
      ),
    );
    
  }

}