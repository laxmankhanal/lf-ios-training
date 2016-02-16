public class Person {
	var inventory: Inventory!

  init() {
    self.inventory = Inventory()
    self.inventory.fileSaveDelegate = self
  }

  func saveInventory() {
    self.inventory.save()
  }
}

extension Person: FileSaver {
  func saved() {
    print("sucessfully saved")
  }
}