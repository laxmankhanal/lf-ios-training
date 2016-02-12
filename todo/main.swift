  import Foundation
  import Glibc

  var i : Int? = 0
  var quit :Bool = false
  var isValid : Bool! = false
  var userName : String! = ""
  var password : String! = ""
  var userInfo = ["laxman", "laxman"]

  var login = Login(users: userInfo, validity: false)
  var selectOption = SelectOption()
  var task = Task()

  // var fileHandler = FileHandler()
  // print(fileHandler.readFromFile("/home/leapfrog/Desktop/ch"))

  var taskDAO = TaskDAO()
  taskDAO.createDatabase("lf-check")
  taskDAO.createTable(withDatabase: "check", withTable: "table_checkit")

  while(isValid == false) {
    if(i > 0){
      print("Enter the information correctly \n")
    }
    print("Enter User Name")
    userName = readLine()

    print("Enter Password")
    password = readLine()

    isValid = login.doAuthentication(withUserName : userName, withPassword : password)
    print(isValid)
    i = i!+1
  }
  
  while(!quit){
    quit = selectOption.getOptions()

  }  
  