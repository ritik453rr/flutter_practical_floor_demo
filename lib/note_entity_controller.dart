import 'package:floor_demo/database/app_database.dart';
import 'package:floor_demo/database/main_dao.dart';
import 'package:floor_demo/database/note_entity.dart';
import 'package:get/get.dart';

class NoteController extends GetxController {
  late AppDataBase db;
  late MainDao mainDao;

  var notes = <NoteEntity>[


  ].obs;

  @override
  void onInit() {
    super.onInit();
    _initDatabase();
  }

  void _initDatabase() async {
     db =
        await $FloorAppDataBase.databaseBuilder('app_database.db').build();
    mainDao = db.mainDao;
    fetchNotes();
  }

  void fetchNotes() async {
    notes.value = await mainDao.getAllNotes();
  }

  Future<void> addNote(NoteEntity noteEntity) async {
    await mainDao.insertNote(noteEntity);
    fetchNotes();
  }

  void updateNote(NoteEntity note) async {
    await mainDao.updateNote(note);
    fetchNotes();
  }

  void deleteNote(NoteEntity note) async {
    await mainDao.deleteNote(note);
    fetchNotes();
  }
}
