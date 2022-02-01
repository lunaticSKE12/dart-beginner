void main() async {
  task1() {
    print('task1');
  }

  Future<String> task2() async {
    await Future.delayed(Duration(seconds: 2));
    print('task2');

    return 'abc';
  }

  task3(result) {
    print('task3 $result');
  }

  task1();
  var result = await task2();
  task3(result);
}
