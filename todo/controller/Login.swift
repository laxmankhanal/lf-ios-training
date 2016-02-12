public class Login {

  var users = ["", ""]
  var isValid : Bool! 
  init(users : [String], validity : Bool) {
  	self.users[0] = users[0]
  	self.users[1] = users[1]
  	self.isValid = validity
  	
  }

  func doAuthentication(withUserName userName: String?, withPassword password: String?) -> Bool { 
    if(users[0] == userName && users[1] == password) {
      isValid = true;
    }
    return isValid
  }
  
}
	