import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp/main.dart';
import 'package:newapp/dropdown.dart';


class Response extends StatelessWidget {

  String name,stage,track;


      Response(this.name,this.stage,this.track);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed:(){Navigator.pop(context, );} ),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text('Summary'),
      ),


      body: Padding(
        padding: const EdgeInsets.fromLTRB(18, 64, 18, 0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('FullName',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Colors.black45,
            ),),

            Text(name,
              style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.deepPurple.shade900,),
            ),

            SizedBox(height: 12,),

            Text('Your Stage',
              style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Colors.black45,
            ),
      ),

            Text(stage,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.deepPurple.shade900,),
            ),

        SizedBox(height: 12,),
            Text('Track'),
            Text(track,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.deepPurple.shade900,),
            ),

        SizedBox(height: 12,),
          ],
        ),
      ),
        );
  }
}
