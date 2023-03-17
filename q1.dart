//Q1: Write a Dart function that returns whether a passed string is palindrome or not?
//* A palindrome is word, phrase, or sequence that reads the same backward as forward, 
//e.g., madam, non, mom etc.
import 'dart:io';

bool isPalindrome(String word) {
  int left = 0;
  int right = word.length - 1;

  while (left < right) {
    if (word[left] != word[right]) {
      return false;
    }
    left++;
    right--;
  }

  return true;
}

void main() {
  // Prompt user to enter a string
  print('Enter a word to check if it is a palindrome:');
  String word = stdin.readLineSync()!;
   if (isPalindrome(word)) {
    print('$word is a palindrome');
  } else {
    print('$word is not a palindrome');
  }
}

