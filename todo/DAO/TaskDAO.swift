import sqlite3

public class TaskDAO {

  var db: COpaquePointer = nil
  var successMessage :Bool = false
  
  func createDatabase(dbName: String) -> Bool {
  	if sqlite3_open(dbName, &db) == SQLITE_OK{
  		return true
  		}else {
  			return false
  		}
  }

  func createTable(withDatabase dbName: String, withTable tableName: String) -> Bool {
    if sqlite3_open(dbName, &db) == SQLITE_OK{
      var createQuery: String = "create table if not exists \(tableName) (id integer primary key autoincrement, taskTitle text, taskDescription)"
      
      if sqlite3_exec(db, createQuery, nil, nil, nil) != SQLITE_OK {
        let errmsg = String.fromCString(sqlite3_errmsg(db))
        print("error creating table: \(errmsg)")
      }
      successMessage = true
    }else{
      print("Database donot Exists")
    }
    print("check")
    return successMessage
  }

  func createTask(withDatabase dbName: String, withTask task: TaskAttribute, withTable tableName: String) -> Bool {
    if sqlite3_open(dbName, &db) == SQLITE_OK{
      var insertQuery = "insert into \(tableName) (id, taskTitle, taskDescription) values ('', task.taskTitle, task.taskDescription)"

      if sqlite3_exec(db, insertQuery, nil, nil, nil) != SQLITE_OK {
        let errmsg = String.fromCString(sqlite3_errmsg(db))
        print("error inserting message: \(errmsg)")
      }
      successMessage = true
    }else{
      print("Database donot Exists")
    }
    return successMessage
  }
  
  func getTask(withDatabase dbName: String, withTask task: TaskAttribute, withTable tableName: String) -> ReturnType {
    if sqlite3_open(dbName, &db) == SQLITE_OK{
      var getUserQuery = "select * from \(tableName) where name = 'laxman' "

      if sqlite3_exec(db, getUserQuery, nil, nil, nil) != SQLITE_OK {
        let errmsg = String.fromCString(sqlite3_errmsg(db))
        print("error while fetching data: \(errmsg)")
      }
    }else{
      print("Database donot Exists")
    }
  } 
  
}
