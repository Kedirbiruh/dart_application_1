import 'dart:io';  // input/output

void main() {
  String firstName = enterFirstName();
  String lastName = enterLastName();
  int age = enterAge();
  String salutation = "Dear";

  DateTime now = DateTime.now();
  String greetings = "";
  if (now.hour >= 6 && now.hour < 12) {
    print(greetings = "Guten Morgen");
  } else if (now.hour >= 12 && now.hour < 18) {
    print(greetings = "Guten Tag");
  } else {
    print(greetings = "Guten Abend");
  }

  if (age < 40) {
    print("Hallo $firstName!");
  } else {
    print("$greetings $salutation $lastName");
  }
}

String enterFirstName() {
  String firstName = "";
  while (firstName.isEmpty) {
    print("Enter your first name:");
    firstName = stdin.readLineSync() ?? "";
    if (firstName.isEmpty) {
      print("it is invalid, try again.");
    }
  }
  return firstName;
}

String enterLastName() {
  String lastName = "";
  while (lastName.isEmpty) {
    print("Enter your last name:");
    lastName = stdin.readLineSync() ?? "";
    if (lastName.isEmpty) {
      print("it is invalid, try again.");
    }
  }
  return lastName;
}

int enterAge() {
  int? age;
  while (age == null || age < 0 || age > 150) {
    print("Enter your age:");
    String input = stdin.readLineSync() ?? "";
    age = int.tryParse(input);
    if (age == null || age < 0 || age > 150) {
      print("it is invalid, try again");
    }
  }
  return age;
}
