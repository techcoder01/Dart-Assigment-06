//Q4: Write a Dart function which will take an array of numbers stored and find the second lowest and second greatest numbers, respectively.
//Sample array : [1,2,3,4,5]
//Expected Output : 2,4

List<int> findSecondLowestAndGreatest(List<int> numbers) {
  numbers.sort(); // sort the array in ascending order
  int secondLowest = numbers[1]; // second element is the second lowest
  int secondGreatest = numbers[numbers.length - 2]; // second last element is the second greatest
  return [secondLowest, secondGreatest];
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  List<int> result = findSecondLowestAndGreatest(numbers);
  print('Second lowest number: ${result[0]}');
  print('Second greatest number: ${result[1]}');
}
