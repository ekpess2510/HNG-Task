import 'package:flutter/material.dart';
import 'package:newapp/response.dart';

//import 'package:newapp/dropdown.dart';
//import 'dropdown.dart';


void main() {


  runApp(UserApp());
}

class UserApp extends StatelessWidget {
  //const UserApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
 // const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {
TextEditingController _nameController = new TextEditingController();
TextEditingController _trackController = new TextEditingController();
TextEditingController _stageController = new TextEditingController();

  String dropdown = 'Select a track';
  var items = ['Select a track','User Interface/Experience Design','Front-End Development',
    'Back-End Development','DevOps','Digital Marketing'];

  String stage = 'Select your Stage';
  var stages = ['Select your Stage','Stage 0','Stage 1',
    'Stage 2','Stage 3','Stage 4','Stage 5','Stage 6','Stage 7','Stage 8','Stage 9','Stage 10'];


  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HNG Stage 3 Task'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(18, 64, 18, 0),
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your full name',
                labelText: 'Full Name',
              ),
              // onChanged: (newText) { nameController = newText;},
            ),

            SizedBox(height: 24,),
          /*  TextField(autofocus: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              disabledBorder: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(),
            //  focusColor: ,
             // labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.deepPurple),
              labelText: 'Full Name ',
              hintText: 'Enter your full name',

            ),
            ),
            SizedBox(height: 24,),

           */

            DropdownButtonFormField(

              elevation: 16,
              decoration: InputDecoration(
                labelText: 'Select Track',
                border: OutlineInputBorder(),
              ),



              isExpanded: true,
              value: dropdown,
              icon: Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) => DropdownMenuItem(
                  value: items,
                child: Text(items),
              ),
              ).toList(),

              onChanged: (String newValue){
                setState(() {
                  dropdown = newValue;
                });
    }
            ),

            SizedBox(height: 24,),

            DropdownButtonFormField(
              elevation: 24,


              decoration:
              InputDecoration(

                border: OutlineInputBorder(),

                labelText: 'Stage',
                hintText: 'Select your stage',
              ),
                isExpanded: true,
                value: stage,
                icon: Icon(Icons.keyboard_arrow_down),
                items: stages.map((String stages) => DropdownMenuItem(
                  value: stages,
                  child: Text(stages),
                ),
                ).toList(),

                onChanged: (String newsValue){
                  setState(() {
                    stage = newsValue;
                  });
                }

            ),

            SizedBox(height: 24,),

           ElevatedButton(
             style:
             ElevatedButton.styleFrom(
               primary: Colors.deepPurple,
               minimumSize: Size(double.infinity, 54),
             ),

             onPressed: () { Navigator.of(context).push(
               MaterialPageRoute(builder: (context) => Response(_nameController.text, stage,dropdown),
               ),
             );
             },
             child: Text('Submit'),
           ),


          ],
        ),
      ),


    );
  }
}
