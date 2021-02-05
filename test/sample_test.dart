import 'package:flutter_test/flutter_test.dart';


 /// Run the test by "pub run test" command
void main() {
  setUp(() {

  });

  tearDown(() {

  });

  test('testName', () {
    expect("actual value", "expected value");
  });

  /// Use "Equatable" library to compare two instances
  /// by default, dart == compares place in memory not the value
  /// using Equatable will compare the value instance of place in memory
  /// to use, you need to import "equatable" in pubspec.yaml
  /// and extend Equatable to whatever class (state) you are testing


  /// to test bloc functionality
  /// import "bloc_test" dependency
  // blocTest(
  //   'TestName',
  //   build: null, // return current instance of bloc/cubit
  //   act: null, // take cubit/bloc and return action applied to it
  //   expect: null // iterable list --> verify if order of state and actual emitted states corresponds
  // );

  //e.g
  // buildTest(
  //   'the counter should emit CounterState(counterValue: 1, wasIncremented: true) when cubit.increment() function is called',
  //   build: () => counterCubit,
  //   act: (cubit) => cubit.increment(),
  //   expect: [CounterState(counterValue: 1, wasIncremented: true)]
  // );
}