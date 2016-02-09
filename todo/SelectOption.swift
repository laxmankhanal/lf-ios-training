public class SelectOption {

	var choice: String? = ""
	var select: Int!
	var quit: Bool = false

	func getOptions() -> Bool {
		print("Press 1 to view Task")
		print("Press 2 to Add Task")
		print("Press 3 to Edit task")
		print("Press 4 to Close Task")
		print("Press 5 to Delete Task")
		print("Press 0 to Exit")

    choice = readLine()
    select = Int(choice!)!

  	switch select {
  	case 0 :
			quit = true 

		case 1 :
			task.viewTask()

		case 2 :
      var add : Bool = true 
      var confirm : String! = ""
			while(add) {
        print("Do you want to add item y/n")
        confirm = readLine()
        if(confirm == "y" || confirm == "Y"){
          task.addTask()
        }else {
          add = false
        }
      }

			case 3 :
	      task.editTask()

	    case 4 :
	      task.closeTask()

	    case 5 :
	      task.deleteTask()

	    default :
	      print("Sorry your request is out of service")

			}
			return quit
		}
		
}