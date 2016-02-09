public class Login {

  var users = ["laxman", "laxman"]
  var isValid : Bool! = false

  func doAuthentication(withUserName userName: String?, withPassword password: String?) -> Bool { 
      if(user[0] == userName && user[1] == password) {
        isValid = true;
      }
    return isValid
  }
  
}




 
	