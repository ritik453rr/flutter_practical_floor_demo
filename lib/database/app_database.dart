import 'dart:async';

import 'package:floor/floor.dart';
import 'package:floor_demo/database/main_dao.dart';
import 'package:floor_demo/database/note_entity.dart';

import 'package:sqflite/sqflite.dart' as sqflite;

part 'app_database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [NoteEntity])
abstract class AppDateBase extends FloorDatabase {
  MainDao get mainDao;
}