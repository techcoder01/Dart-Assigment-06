//Q6: Write a Dart function that accept a list of country names as input 
//and returns the longest country name as output.
//Sample function : Get_Longest_Country(["Australia", "Germany", "United States of America"])
//Expected output : "United States of America"

import 'dart:io';

String getLongestCountry(List<String> countries) {
  String longestCountry = '';
  for (String country in countries) {
    if (country.length > longestCountry.length) {
      longestCountry = country;
    }
  }
  return longestCountry;
}

void main() {
  // Prompt user to enter countries separated by commas
  print('Enter countries separated by commas:');
  String input = stdin.readLineSync()!;
  
  // Split the input into a list of countries
  List<String> countries = input.split(',');
  
  // Call the getLongestCountry function
  String longestCountry = getLongestCountry(countries);
  
  // Print the longest country
  print('Longest country: $longestCountry');
}
