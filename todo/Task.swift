public class Task {
	var task = [TaskAttributes]()
	var i = 0
  

	func addTask() -> Bool {

    var taskAttributes = TaskAttributes()

		print("\n Enter title of task")
		let title: String? = readLine()

		print("\n Enter Description of task")
		let description: String? = readLine()

		/*print("\n Enter Total Hours")
    var totalHour = readLine()
		var totalHours = Int(totalHour!)!

		print("\n Enter Working Hours A Day")
		var workingHour = readLine()
    var workingHours = Int(workingHour!)!*/

    taskAttributes.taskTitle = title!
    taskAttributes.taskDescription = description!
   
    task.append(taskAttributes)

    return true

   //taskAttributes.taskTotalHours = Int(totalHours)
    //taskAttributes.taskWorkingHours = Int(workingHours)!

	}

  func viewTask() {
    i = 0
    for item in task {
      print(item.taskTitle)
      print(item.description!)

    }

  }

  func editTask() {

  }

	func closeTask() {

  }
  
  func deleteTask() {

  }


}
