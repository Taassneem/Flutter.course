import 'dart:html';
import 'dart:math';

//OOP
class Student {
  // attribute
  final String studenName;
  final int studentAge;
  final int studentId;
  Student(this.studenName, this.studentAge, this.studentId);
  //method
  void takeAssigment() {
    print('takeAssigment');
  }
}

class Faclty {
  final String name;
  final int age;
  final int id;
  Faclty(this.name, this.age, this.id);
  void goToFaculty() {
    print('goToFaculty');
  }
}

class Doctor extends Faclty {
  Doctor(super.name, super.age, super.id);
  void makeExams() {
    print('make exams');
  }

  @override
  void goToFaculty() {
    // TODO: implement goToFaculty
    super.goToFaculty();
  }
}

void main() {
  //constructor
  Student student1 = Student('vh', 45, 56985);
  print(student1.studenName);
  String firstName = 'hbvj';
  String lastName = 'nckjd';
  String familyName = 'vbjhfm';
  // print('Family name $familyName');
  // print('Family name $firstName');
  // print('Family name $lastName');
  printName(firstName);
  printName(lastName);
  printName(familyName);
  print(fullName());
  var name2 = fullName();
  print(name2);
  print(returnName('firstName', 'lastName', 'familyName'));
  print(number());
  print(sumOfNumbers(num1: 5, num2: 3, num3: 4));
  print(sumOfNums(8, 6, 7));
  print(calculateTheOperation(7, 6));
  print(number1(5, 4));
  print(sum(5, 9));
  VoidCallback fun = () {};
  Function fun1 = () {};
}

void printName(String name) {
  print('Name $name');
}

String fullName() {
  String firstName = 'hbvj';
  String lastName = 'nckjd';
  String familyName = 'vbjhfm';
  return firstName + lastName + familyName;
}

String returnName(String firstName, String lastName, String familyName) {
  return firstName + lastName + familyName;
}

num number() {
  int num1 = 5;
  int num2 = 4;

  return pow(num1, num2);
}

num number1(num num1, num num2) {
  return pow(num1, num2);
}

//required parameter
int sumOfNums(int num1, int num2, int num3) {
  return num1 + num2 + num3;
}

//named
int sumOfNumbers({required int num1, required int num2, required int num3}) {
  return num1 + num2 + num3;
}

//optional
num calculateTheOperation(num product, [num discont = 0]) {
  num total = product - discont;
  return total;
}

int sum(num1, num2) => num1 + num2;
