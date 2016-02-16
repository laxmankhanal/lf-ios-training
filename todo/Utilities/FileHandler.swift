import Glibc

public class FileHandler {

	enum fileMode: String {
		case Read = "r"
		case Append = "a"
	}

	// Convert String to UInt8 bytes
	func bytesFromString(string: String) -> [UInt8] {
    return Array(string.utf8)
	}

	// Convert UInt8 bytes to String
	func stringFromBytes(bytes: UnsafeMutablePointer<UInt8>, count: Int) -> String {
	   return String((0..<count).map ({Character(UnicodeScalar(bytes[$0]))}))
	}

	func writeToFile(targetPath path: String, inputString enteredString: String) {
		let fp = fopen(path, fileMode.Append.rawValue)
	  let byteArray = bytesFromString("\n \(enteredString)")
	  fwrite(byteArray, 1, byteArray.count, fp)
	  fclose(fp)
	}

	func readFromFile(path: String) -> String {
		var outputString: String = ""
		let fp = fopen(path, fileMode.Read.rawValue)
		guard fp != nil else { return "sorry file doesn't exists" }
		let chunkSize = 1024
		let buffer: UnsafeMutablePointer<UInt8> = UnsafeMutablePointer.alloc(chunkSize)
  	let count: Int = fread(buffer, 1, chunkSize, fp)

    if count > 0 {
      outputString += stringFromBytes(buffer, count: count)
    }

    return outputString
	}

}
  