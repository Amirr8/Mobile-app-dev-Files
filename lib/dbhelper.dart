import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper()=> _instance;
  DatabaseHelper._internal();
  static Database? _database;

  Future<Database> get database async{
    if(_database!=null){
      return _database!;
    }
    else{
      _database = await _initDB('elec2');
      return _database!;
    }
  }
  Future<Database> _initDB(String fileName)async{
    String path = join(await getDatabasesPath(), fileName);
    return await openDatabase(path, version: 1, onCreate: _createTables);
  }
  Future<void> _createTables (Database db , int version) async{
    await db.execute('''
  CREATE TABLE IF NOT EXISTS user(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  firstName TEXT,
  middleName TEXT,
  lastName TEXT,
  email TEXT,
  password TEXT
  ''');


  }
  Future<int> insertUser(String firstName, String middleName, String lastName, String email, String password)async {
    final db = await database;
    return await db.insert('users',{
      'firstName': firstName,
      'middleName': middleName,
      'lastName': lastName,
      'email': email,
      'password': password
    });
  }
}

