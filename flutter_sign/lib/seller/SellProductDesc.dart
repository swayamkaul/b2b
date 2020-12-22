import 'package:flutter/material.dart';

class SellProductDesc extends StatelessWidget{
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
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
           mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              
              TextFormField(
                 decoration: InputDecoration(
                labelText: 'Enter Product Name*'
                  ),
                  ),
               SizedBox(height: 50,),
             
              TextFormField(
                 decoration: InputDecoration(
                labelText: 'Enter Product Description*'
                  ),
                  ),
               SizedBox(height: 50,),
              TextFormField(
                 decoration: InputDecoration(
                labelText: 'Enter Product Category*'
                  ),
                  ),
                SizedBox(height: 100,),
                 RaisedButton(onPressed: () {
                    // Navigator.push(context,MaterialPageRoute(builder: (context) => SellOnBTG()),);
                 },
                            child: Text('Next', 
                            style: TextStyle(fontSize: 20)),
                            color: Colors.orange,

              ),

            ],
          ),
        ),
      ),
    );
    
  }

}