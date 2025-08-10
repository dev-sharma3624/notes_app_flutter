import 'package:flutter/material.dart';
import 'package:personal_notes_app_flutter/enums/AppBarTabs.dart';
import 'package:personal_notes_app_flutter/ui/customAppBar.dart';
import 'package:personal_notes_app_flutter/ui/notesBody.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget{

  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: false,

        appBar: CustomAppBar(),

        floatingActionButton: Padding(

          padding: const EdgeInsets.all(16.0),

          child: IconButton.filledTonal(
              onPressed: (){},

              icon: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 32,
              ),

              iconSize: 32,

              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.amberAccent)
              ),
          ),

        ),

        body: NotesBody(),


      ),
    );
    
  }

}
