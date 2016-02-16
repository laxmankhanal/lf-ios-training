public class Inventory {

	var fileSaveDelegate: FileSaver?

  func save() {
    // Write methids to save the Inventory
    // Tell its delegate that inventory is saved
    self.fileSaveDelegate?.saved()
  }

}