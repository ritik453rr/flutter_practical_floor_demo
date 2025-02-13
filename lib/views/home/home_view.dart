import 'package:floor_demo/database/note_entity.dart';
import 'package:floor_demo/note_entity_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
   HomeView({super.key});
    final NoteController noteController = Get.put(NoteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notes')),
      body: Obx(() {
        if (noteController.notes.isEmpty) {
          return Center(child: Text('No notes available'));
        }

        return ListView.builder(
          itemCount: noteController.notes.length,
          itemBuilder: (context, index) {
            final note = noteController.notes[index];
            return ListTile(
              title: Text(note.title),
              subtitle: Text(note.data),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(note.id.toString()),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      noteController.deleteNote(note);
                    },
                  ),
                ],
              ),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: ()async {
          await noteController.addNote(
            NoteEntity(
              title: 'Title',
              data: 'Data ',
            ),

          );
        
        
        },
        child: Icon(Icons.add),
      ),
    );
    
  
  }
}


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:notes_app/controllers/note_controller.dart';
// import 'package:notes_app/models/note.dart';

// class HomeScreen extends StatelessWidget {
//   final NoteController _noteController = Get.put(NoteController());

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }

