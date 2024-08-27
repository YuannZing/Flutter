import 'package:belajar_crud/services/firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirestoreService firestoreService = FirestoreService();
  final TextEditingController noteController = TextEditingController();
  final TextEditingController noteControllerq = TextEditingController();

  void openNoteBox({String? docID}) {
    String noteText = '';
    String noteTextq = '';

    if (docID != null) {
      noteText = // fetch note text using docID from Firestore
          noteController.text = noteText;

      noteTextq = // fetch note text using docID from Firestore
          noteControllerq.text = noteTextq;
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: noteController,
              decoration: InputDecoration(labelText: 'Note'),
              onChanged: (value) {
                noteText = value;
              },
            ),
            TextField(
              controller: noteControllerq,
              decoration: InputDecoration(labelText: 'Noteq'),
              onChanged: (value) {
                noteTextq = value;
              },
            ),
          ],
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              if (docID == null) {
                firestoreService.addNote(noteText, noteTextq);
              } else {
                firestoreService.updateNote(docID, noteText);
              }
              noteController.clear();
              noteControllerq.clear();
              Navigator.pop(context);
            },
            child: Text('Add'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Notes"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: openNoteBox,
        child: const Icon(Icons.add),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: firestoreService.getNotesStream(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List notesList = snapshot.data!.docs;

            return ListView.builder(
              itemCount: notesList.length,
              itemBuilder: (context, index) {
                DocumentSnapshot document = notesList[index];
                String docID = document.id;

                Map<String, dynamic> data =
                    document.data() as Map<String, dynamic>;

                String noteText = data['note'];
                String noteTextq = data['noteq'];

                return ListTile(
                  title: Text(noteText),
                  subtitle: Text(noteTextq),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () => openNoteBox(docID: docID),
                        icon: const Icon(Icons.settings),
                      ),
                      IconButton(
                        onPressed: () => firestoreService.deleteNote(docID),
                        icon: const Icon(Icons.delete),
                      ),
                    ],
                  ),
                );
              },
            );
          } else {
            return const Text('No notes....');
          }
        },
      ),
    );
  }
}
