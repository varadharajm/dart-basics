import 'dart:io';

void main() {
  var name2='mahendran';
print ('Enter your name');
var name= stdin.readLineSync();  // To get the value from user
  var finalName=name;
print('$name');
var address= finalAddress(finalName!, name2);
print('$address');
}

String finalAddress(String firstName, String lastName ){
  //Condition of the body
  return firstName+lastName;
}