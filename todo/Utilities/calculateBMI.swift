enum BMIResult {
	case UnderWeight
	case NormalWeight
	case OverWeight
	case Obese
}

var bmiCondition: BMIResult! = BMIResult.Obese
var bmi: Double = 0.0

func calculateBMI(withHeightInCm height: Double, withWeight weight: Double) -> Double{
	var heightInM = height / 100
	bmi = weight / (heightInM * heightInM)
	return bmi
}
	
func getResult() -> BMIResult {
	switch bmi {
	case 0.0..<18.5:
		bmiCondition = .UnderWeight

	case 18.5..<24.9:
		bmiCondition = .NormalWeight

	case 25..<29.9:
		bmiCondition = .OverWeight

	default:
		bmiCondition = .Obese
	}
	return bmiCondition

}

func getTips() -> String {
	switch bmiCondition as BMIResult{
	case .UnderWeight:
		return ("You must eat 5 eggs a day")

	case .NormalWeight:
		return("wow you continue your diet")

	case .OverWeight:
		return("Wake up at 4 and take exercise daily for 2 hours")

	case .Obese:
		return("Wake up at 4 and take heavy exercise and maintain diet")
	}
}

getResult()
getTips()