public class Login {

  var users = ["laxman", "laxman"]
  var isValid : Bool! = false

  func doAuthentication(withUserName userName: String?, withPassword password: String?) -> Bool { 
      if(users[0] == userName && users[1] == password) {
        isValid = true;
      }
    return isValid
  }
  
}




 
	