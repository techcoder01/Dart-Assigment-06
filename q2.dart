//Q2: Write a Dart function that returns a passed string with letters in alphabetical orders.
//Example String -> hello
//Expected String -> ehllo

import 'dart:io';

String orderString(String word) {
  List<String> characters = word.split('');
  characters.sort();
  return characters.join('');
}

void main() {
  // Prompt user to enter a string
  print('Enter a word to sort its characters in alphabetical order:');
  String word = stdin.readLineSync()!;
  
  // Call the orderString function
  String sortedWord = orderString(word);
  
  // Print the sorted word
  print('The sorted word is: $sortedWord');
}
