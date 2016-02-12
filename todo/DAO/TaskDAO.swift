import sqlite3

public class TaskDAO {

  var db: COpaquePointer = nil
  var success :Bool = false
  func createDatabase(dbName: String) -> Bool {
  	if sqlite3_open(dbName, &db) == SQLITE_OK{
  		return true
  		}else {
  			return false
  		}
  }

  func createTable(withDatabase dbName: String, withTable tableName: String) -> Bool {
    if sqlite3_open(dbName, &db) == SQLITE_OK{
      var createQuery: String = "create table if not exists \(tableName) (id integer primary key autoincrement, name text, password text)";

      if sqlite3_exec(db, createQuery, nil, nil, nil) != SQLITE_OK {
        let errmsg = String.fromCString(sqlite3_errmsg(db))
        print("error creating table: \(errmsg)")
      }
      success = true
    }else{
      print("Database donot Exists")
    }

    return success
  }

  func createTask(withDatabase dbName: String, task: Task) -> Bool {
    if sqlite3_open(dbName, &db) == SQLITE_OK{
      var insertQuery = "insert into test (name) values ()"

      if sqlite3_exec(db, insertQuery, nil, nil, nil) != SQLITE_OK {
        let errmsg = String.fromCString(sqlite3_errmsg(db))
        print("error inserting message: \(errmsg)")
      }
      success = true
    }else{
      print("Database donot Exists")
    }

    return success
  }
  /* 
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
  } */
  
}
