import 'dart:io';

class LBSIMCounter {
  int count;
  String userName;
  LBSIMCounter({required this.count, required this.userName});
}

void incrementCounter({required LBSIMCounter counter, required int value}) {
  counter.count = counter.count + value;
}

void decrementCounter({required LBSIMCounter counter, required int value}) {
  counter.count = counter.count - value;
}

void multiplyCounter({required LBSIMCounter counter, required int value}) {
  counter.count = counter.count * value;
}

void divisionCounter({required LBSIMCounter counter, required int value}) {
  counter.count = counter.count ~/ value;
}

void remainderCounter({required LBSIMCounter counter, required int value}) {
  counter.count = counter.count % value;
}

void main(List<String> args) {
  int choice = 10;
  int? operationValue;
  bool stop = false;
  LBSIMCounter counter;
  String? userName;

  print('Enter Your USERNAME : ');

  userName = stdin.readLineSync();
  if (userName != null && userName.isNotEmpty) {
    counter = LBSIMCounter(
      userName: userName,
      count: 100,
    );
  } else {
    return;
  }

  while (!stop) {
    print('''
    Enter Your Choice :
    0. Print Counter Value
    1. Increment Counter
    2. Decrement Counter
    3. Multiply
    4. Divide
    5. Remainder
    6. Change UserName
    7. Exit
    ''');
    String? input = stdin.readLineSync();
    if (input != null && input.isNotEmpty) {
      choice = int.parse(input);
    }
    switch (choice) {
      case 0:
        print('The value of Count is : ${counter.count}');
        break;
      case 1:
        print('Enter the value, to increment count : ');
        operationValue = int.parse(stdin.readLineSync()!);
        incrementCounter(counter: counter, value: operationValue);
        print(
            'The value changed after incremented by the user ${counter.userName} is ${counter.count}');
        break;
      case 2:
        print('Enter the value, to decrement count : ');
        operationValue = int.parse(stdin.readLineSync()!);
        decrementCounter(counter: counter, value: operationValue);
        print(
            'The value changed after decremented by the user ${counter.userName} is ${counter.count}');
        break;
      case 3:
        print('Enter the value, to multiply count with: ');
        operationValue = int.parse(stdin.readLineSync()!);
        multiplyCounter(counter: counter, value: operationValue);
        print(
            'The value changed after multiplying by the user ${counter.userName} is ${counter.count}');
        break;
      case 4:
        print('Enter the value, to divide count with: ');
        operationValue = int.parse(stdin.readLineSync()!);
        divisionCounter(counter: counter, value: operationValue);
        print(
            'The value changed after dividing by the user ${counter.userName} is ${counter.count}');
        break;
      case 5:
        print(
            'Enter the value, to check remainder of count : ');
        operationValue = int.parse(stdin.readLineSync()!);
        remainderCounter(counter: counter, value: operationValue);
        print(
            'The value of count after remainder operation by the user ${counter.userName} is ${counter.count}');
        break;
      case 6:
        print('Enter the new UserName : ');
        String? newUser = stdin.readLineSync();
        if (newUser != null && newUser.isNotEmpty) {
          counter.userName = newUser;
        }
        print('The new username is ${counter.userName}');
        break;
      case 7:
        stop = true;
        break;
      default:
    }
  }
}
