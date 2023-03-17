//Q5: Write a Dart function that accepts two arguments,
// a string and a letter and the function will count
// the number of occurrences of the specified letter within the string.
//Sample arguments : 'w3resource.com', 'o'
//Expected output : 2

import 'dart:io';

int countOccurrences(String word, String letter) {
  int count = 0;
  for (int i = 0; i < word.length; i++) {
    if (word[i] == letter) {
      count++;
    }
  }
  return count;
}

void main() {
  // Prompt user to enter a word
  print('Enter a word:');
  String word = stdin.readLineSync()!;
  
  // Prompt user to enter a letter
  print('Enter a letter:');
  String letter = stdin.readLineSync()!;
  
  // Call the countOccurrences function
  int count = countOccurrences(word, letter);
  
  // Print the result
  print('Number of occurrences of $letter in $word: $count');
}
