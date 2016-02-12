import sqlite3

public class TaskDao {

  var db: COpaquePointer = nil

  func createDatabase(dbName: String) -> Bool {
  	if sqlite3_open(dbName, &db) == SQLITE_OK{
  		return true
  		}else {
  			return false
  		}
  }

  func createTable(withDatabase dbName: String, withTable tableName: String) -> Bool {
    if sqlite3_open(dbName, &db) == SQLITE_OK{
      var createQuery: String = "create table if not exists test (id integer primary key autoincrement, name text)";

      if sqlite3_exec(db, sql, nil, nil, nil) != SQLITE_OK {
        let errmsg = String.fromCString(sqlite3_errmsg(db))
        print("error creating table: \(errmsg)")
      }
    }else{
      print("Database donot Exists")
    }
  }

  func createTask(withDatabase dbName: String, task: Task) -> Bool {
    if sqlite3_open(dbName, &db) == SQLITE_OK{
      var insertQuery = "insert into test (name) values ('laxman')"

      if sqlite3_exec(db, insertQuery, nil, nil, nil) != SQLITE_OK {
        let errmsg = String.fromCString(sqlite3_errmsg(db))
        print("error inserting message: \(errmsg)")
      }
    }else{
      print("Database donot Exists")
    }
  }
  
  func getTask(arguments) -> ReturnType {
    if sqlite3_open(dbName, &db) == SQLITE_OK{
      var getUserQuery = "select * from test where name = 'laxman' "

      if sqlite3_exec(db, getUserQuery, nil, nil, nil) != SQLITE_OK {
        let errmsg = String.fromCString(sqlite3_errmsg(db))
        print("error while fetching data: \(errmsg)")
      }
    }else{
      print("Database donot Exists")
    }
  }
  
}
