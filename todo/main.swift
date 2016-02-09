  var i : Int? = 0
  var quit :Bool = false
	var login = Login()
  var selectOption = SelectOption()
	var task = Task()
  var isValid : Bool! = false
  var userName : String! = ""
  var password : String! = ""

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


    
  