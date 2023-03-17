import 'dart:io';

String capitalizeFirstLetter(String sentence) {
  List<String> words = sentence.split(' ');
  List<String> capitalizedWords = [];

  for (String word in words) {
    String capitalizedWord = word[0].toUpperCase() + word.substring(1);
    capitalizedWords.add(capitalizedWord);
  }

  return capitalizedWords.join(' ');
}

void main() {
  // Prompt user to enter a sentence
  print('Enter a sentence to capitalize the first letter of each word:');
  String sentence = stdin.readLineSync()!;
  
  // Call the capitalizeFirstLetter function
  String capitalizedSentence = capitalizeFirstLetter(sentence);
  
  // Print the capitalized sentence
  print('The capitalized sentence is: $capitalizedSentence');
}
