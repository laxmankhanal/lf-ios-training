public class TaskAttributes {

	var title: String? = ""
	var description: String? = ""
	var totalHours: Int? = 0
	var workingHours: Int? = 0

  var taskTitle: (String) {
    set(title) {
      self.title = title
    }
    get{
      return self.title!
    }
  }

  var  taskDescription: String {
    set(description) {
      self.description = description
    }
    get{
      return self.description!
    }
  }

  var taskTotalHours: Int {
    set(totalHours) {
      self.totalHours = totalHours
    }
    get{
      return self.totalHours!
    }
  }

  var taskWorkingHours: Int {
    set(workingHours) {
      self.workingHours = workingHours
    }
    get{
      return self.workingHours!
    }
  }

}
