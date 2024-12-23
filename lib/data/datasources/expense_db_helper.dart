import 'package:expense_mate/core/utilities/getters/get_user_mail.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../models/expense_model.dart';

class ExpenseDBHelper {
  static Database? _database;

  // Singleton pattern to reuse the database instance
  static final ExpenseDBHelper _instance = ExpenseDBHelper._internal();

  factory ExpenseDBHelper() {
    return _instance;
  }

  ExpenseDBHelper._internal();

  /// Initialize the database
  Future<Database> initDB() async {
    // Get the database path
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'expenses.db');

    // Open or create database
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade, // Add upgrade handling
    );
  }

  /// Create table schema
  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE expenses(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      amount REAL,
      name TEXT,
      date TEXT,
      userEmail TEXT  -- Added userEmail column
    )
  ''');
  }

  Future<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion < 2) {
      // Assuming version 2 has the new schema
      await db.execute('ALTER TABLE expenses ADD COLUMN userEmail TEXT');
    }
  }

  /// Get database instance
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDB(); // Initialize database if null
    return _database!;
  }

// Add an expense
  Future<int> addExpense(ExpenseModel expense) async {
    final db = await database;
    return await db.insert(
      'expenses',
      {
        ...expense.toMap(),
        'userEmail': getUserEmail() ?? '', // Add email to each expense
      },
    );
  }

// Get all expenses for the current user
  Future<List<ExpenseModel>> getExpenses() async {
    final db = await database;
    final String userEmail = getUserEmail() ?? '';

    // Query expenses filtered by the user's email
    final List<Map<String, dynamic>> maps = await db.query(
      'expenses',
      where: 'userEmail = ?',
      whereArgs: [userEmail],
    );

    return List.generate(maps.length, (i) {
      return ExpenseModel.fromMap(maps[i]);
    });
  }

  // Update an expense
  Future<int> updateExpense(ExpenseModel expense) async {
    final db = await database;
    return await db.update(
      'expenses',
      expense.toMap(),
      where: 'id = ?',
      whereArgs: [expense.id],
    );
  }

  // Delete an expense
  Future<int> deleteExpense(int id) async {
    final db = await database;
    return await db.delete(
      'expenses',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
