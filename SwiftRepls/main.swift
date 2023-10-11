import Foundation

enum mood {
  case Happy
  case Sad
}

print("Number? ")

let userInput: String = getStringInt()

var digitArray = Array(userInput)


var intArray = [Int]()

for digit in digitArray {
  let tempDigit = String(digit)
    guard let tempTempDigit = Int(tempDigit) else{
      print("Invalid Input")
      break
    }
    intArray.append(tempTempDigit)
}

print(intArray)

var sum = 0

for number in intArray {
  let temp = number
  sum = sum + (temp*temp)
}
print(sum)

if sum == 1 {
  print(mood.Happy)
}
else if sum == 4 {
  print(mood.Sad)
}
else {
//LOOP FROM HERE
  var found = false
  
  while found == false {
  
    let stringSum = String(sum)
    
    var intSumArray = [Int]()
    
    let stringSumArray = Array(stringSum)
    
    for digit in stringSumArray {
      let tempDigit = String(digit)
        guard let tempTempDigit = Int(tempDigit) else{
          print("Invalid Input")
          break
        }
        intSumArray.append(tempTempDigit)
    }
    
    print(intSumArray)
  
    for number in intSumArray {
      let temp = number
      sum = sum + (temp*temp)
    }
    print(sum)

    if sum == 1 {
      print(mood.Happy)
      found = true
    }
    else if sum == 4 {
      print(mood.Sad)
      found = true
    }
  
  }
}
