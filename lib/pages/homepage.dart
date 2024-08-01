// ignore_for_file: prefer_const_constructors

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

                    // cose the box
                    Navigator.pop(context);
                  },
                )
              ],
            ));
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
    );
  }
}
