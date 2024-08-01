// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firstapp/services/firestore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // get firestore service
  final FirestoreService firestoreService = FirestoreService();

  // text controller to access what user has entered
  final TextEditingController textController = TextEditingController();

  // open a dialog box to add a note
  void openNoteBox() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: TextField(
          controller: textController,
        ),
        actions: [
          // button to save
          ElevatedButton(
            child: Text("Add"),
            onPressed: () {
              // add a note
              firestoreService.addNote(textController.text);

              // after add clear the text controller
              textController.clear();

              // close the box
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Notes")),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: openNoteBox,
        child: const Icon(Icons.add),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: firestoreService.getNotesStream(),
        builder: (context, snapshot) {
          // if we have data then get all the docs
          if (snapshot.hasData) {
            List<DocumentSnapshot> notesList = snapshot.data!.docs;

            // display it as a list
            return ListView.builder(
              itemCount: notesList.length,
              itemBuilder: (context, index) {
                // get each individual doc
                DocumentSnapshot document = notesList[index];
                String docId = document.id;

                // get note from each doc
                Map<String, dynamic> data =
                    document.data() as Map<String, dynamic>;
                String noteText = data["note"];

                // display as a list tile
                return ListTile(
                  title: Text(noteText),
                );
              },
            );
          } else {
            // if no data then show a message
            return Center(child: Text("No notes found."));
          }
        },
      ),
    );
  }
}
