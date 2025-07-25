import 'package:flutter/material.dart';
import 'note.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  TextEditingController txt = TextEditingController();
  TextEditingController diss = TextEditingController();

  List<Note> notes = [];
  int? editingIndex; // <-- Track the index being edited

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes App", style: TextStyle(color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Title input
            TextField(
              decoration: InputDecoration(
                hintText: "Enter Title",
                labelText: "Title",
              ),
              controller: txt,
            ),

            SizedBox(height: 10),

            // Description input
            TextField(
              decoration: InputDecoration(
                hintText: "Enter Description",
                labelText: "Description",
              ),
              controller: diss,
            ),

            SizedBox(height: 10),

            // Submit / Update button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                if (txt.text.isNotEmpty && diss.text.isNotEmpty) {
                  setState(() {
                    if (editingIndex == null) {
                      // Add new note
                      notes.add(
                        Note(
                          id: DateTime.now().toIso8601String(),
                          tx: txt.text,
                          dec: diss.text,
                        ),
                      );
                    } else {
                      // Update existing note
                      notes[editingIndex!] = Note(
                        id: notes[editingIndex!].id, // keep same ID
                        tx: txt.text,
                        dec: diss.text,
                      );
                      editingIndex = null; // reset
                    }

                    txt.clear();
                    diss.clear();
                  });
                }
              },
              child: Text(editingIndex == null ? "Submit" : "Update"),
            ),

            SizedBox(height: 30),
            Center(child: Text("List View", style: TextStyle(fontSize: 30))),

            // List view of notes
            Expanded(
              child: ListView.builder(
                itemCount: notes.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(notes[index].tx),
                  subtitle: Text(notes[index].dec),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Edit Button
                      IconButton(
                        icon: Icon(Icons.edit, color: const Color.fromARGB(255, 133, 229, 104)),
                        onPressed: () {
                          setState(() {
                            txt.text = notes[index].tx;
                            diss.text = notes[index].dec;
                            editingIndex = index;
                          });
                        },
                      ),
                      // Delete Button
                      IconButton(
                        icon: Icon(Icons.delete, color: const Color.fromARGB(255, 253, 60, 46)),
                        onPressed: () {
                          setState(() {
                            notes.removeAt(index);
                            if (editingIndex == index) {
                              // Cancel editing if the edited item is deleted
                              editingIndex = null;
                              txt.clear();
                              diss.clear();
                            }
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}