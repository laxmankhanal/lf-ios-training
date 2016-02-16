 public class Task {

	var task = [TaskAttributes]()
	var i : Int

  init() {
    self.i = 0
  }

  enum Days : String {
    case Sunday = "sunday"
    case Monday = "monday"
    case Tuesday = "tuesday"
    case Wednesday = "wednesday"
    case Thursday = "thursday"
    case Friday = "friday"
    case Saturday = "saturday"
  }
  
	func addTask() -> Bool {
    var taskAttributes = TaskAttributes()

		print("\n Enter title of task")
		let title: String? = readLine()

		print("\n Enter Description of task")
		let description: String? = readLine()

		print("\n Enter Total Hours")
    var totalHour = readLine()
		var totalHours = Int(totalHour!)!

		print("\n Enter Working Hours A Day")
		var workingHour = readLine()
    var workingHours = Int(workingHour!)!

    taskAttributes.taskTitle = title!
    taskAttributes.taskDescription = description!
    task.append(taskAttributes)
    return true

   //taskAttributes.taskTotalHours = Int(totalHours)
    //taskAttributes.taskWorkingHours = Int(workingHours)!
	}

  func viewTask() {
    for item in task {
      print(item.taskTitle)
      print(item.description!)
    }
  }

  func inputDay(dayString: String!) {
    let dayEnum = Days(rawValue: dayString) 
    // as? Days else { return }
    print(dayEnum)
    taskByDay(dayEnum!)
}

  func taskByDay(inputDay: Days) {
    switch inputDay {
    case .Sunday :
      print("Today is \(inputDay.rawValue) \n")

    case Days.Monday :
      print("Today is \(inputDay.rawValue) \n")

    case Days.Tuesday :
      print("Today is \(inputDay.rawValue) \n")

    case Days.Wednesday :
      print("Today is \(inputDay.rawValue) \n")

    case Days.Thursday :
      print("Today is \(inputDay.rawValue) \n")

    case Days.Friday :
      print("Today is \(inputDay.rawValue) \n")

    case Days.Saturday :
      print("Today is \(inputDay.rawValue) \n")
    }
  }

  func editTask() {

  }

	func closeTask() {

  }
  
  func deleteTask() {

  }

}
 