import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotesBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(12),
        color: Colors.grey.shade100,
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            NoteCard(),
            NoteCard(),
            NoteCard(),
            NoteCard(),
            NoteCard(),
            NoteCard(),
            NoteCard(),
            NoteCard(),
            NoteCard(),
            NoteCard(),
            NoteCard(),
            NoteCard(),
          ],

        )
    );

  }
}

class NoteCard extends StatelessWidget{
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {

    return Card(
      color: Colors.white,
      elevation: 0,
      margin: EdgeInsetsGeometry.all(8),
      child: Container(
        padding: EdgeInsetsGeometry.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Heading",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),

            Spacer(),

            Text(
              "lorem ipsum dolar mante dkfdldjfld d fldjflf  df ldfj lf ff l;fjdf flfj lf",
              textAlign: TextAlign.start,
            ),

            Spacer(),

            Text(
              "Fri 13:06",
              style: TextStyle(
                  color: Colors.grey
              ),

            )
          ],
        ),
      ),
    );

  }
}