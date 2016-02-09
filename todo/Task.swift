public class Task {

	var task = [TaskAttributes]()
	var i = 0

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
    for item in task {
      print(item.taskTitle)
      print(item.description!)
    }
  }

  func taskByDay(inputDay : String!) {
    var day : Days
    if(inputDay == "sunday"){
      day = .Sunday
    }else if(inputDay == "monday"){
      day = .Monday
    }else if(inputDay == "tuesday"){
      day = .Tuesday
    }else if(inputDay == "wednesday"){
      day = .Wednesday
    }else if(inputDay == "thursday"){
      day = .Thursday
    }else if(inputDay == "friday"){
      day = .Friday
    }else {
      day = .Saturday
    }

    switch day {
    case .Sunday :
      print("Today is \(day.rawValue) \n")

    case Days.Monday :
      print("Today is \(day.rawValue \n)")

    case Days.Tuesday :
      print("Today is \(day.rawValue \n)")

    case Days.Wednesday :
      print("Today is \(day.rawValue \n)")

    case Days.Thursday :
      print("Today is \(day.rawValue \n)")

    case Days.Friday :
      print("Today is \(day.rawValue \n)")

    case Days.Saturday :
      print("Today is \(day.rawValue \n)")
    }
  }

  func editTask() {

  }

	func closeTask() {

  }
  
  func deleteTask() {

  }


}
