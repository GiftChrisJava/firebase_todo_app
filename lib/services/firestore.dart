import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // get a collection of notes
  final CollectionReference notes =
      FirebaseFirestore.instance.collection("notes");

  // CREAT : add a new note
  Future<void> addNote(String note) {
    return notes.add({"note": note, "timestamp": Timestamp.now()});
  }

  // READ : get notes from the db
  Stream<QuerySnapshot> getNotesStream() {
    final notesStream =
        notes.orderBy("timestamp", descending: true).snapshots();

    return notesStream;
  }

  // UPDATE : update a note in the db
  Future<void> updateNote(String docID, String newNote) {
    return notes
        .doc(docID)
        .update({"note": newNote, "timestamp": Timestamp.now()});
  }

  // DELETE : delete a note from the db
  Future<void> deleteNote(String docID) {
    return notes.doc(docID).delete();
  }
}
