let array = [1, 2, 3, 4, 5]

let index = 10

if index >= 0 && index < array.count {
    let element = array[index]
    print(element) // Safe access
} else {
    print("Index out of range") // Handle the error gracefully
}

//Alternative using optional binding:

if let element = array.indices.contains(index) ? array[index] : nil {
  print(element)
} else {
  print("Index out of range")
}

//or using guard statement
guard array.indices.contains(index) else{
  print("Index out of range")
  return
}
let element = array[index]
print(element)