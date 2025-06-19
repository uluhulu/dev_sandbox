import 'package:rxdart/rxdart.dart';

Future<void> tryBehaviourSubject() async {
  final searchText = BehaviorSubject<String>();

  searchText.stream
      .debounceTime(Duration(milliseconds: 300))
      ///
      .where((query) => query.isNotEmpty)
      .listen((query) {
        print('🔍 Searching for "$query"');
      });

  searchText.add('hel');
  await Future.delayed(Duration(milliseconds: 100));
  searchText.add('hell');
  await Future.delayed(Duration(milliseconds: 100));
  searchText.add('hello');
  await Future.delayed(Duration(milliseconds: 500));

  final numbers = BehaviorSubject<int>();

  numbers.stream
      .where((value) => value.isEven)
      .map((evenValue) => evenValue * evenValue)
      .listen((result) {
        print('Received: $result');
      });

  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  numbers.add(4);
  numbers.add(5);
  numbers.add(6);

  final List<String> allFruits = [
    'apple',
    'banana',
    'orange',
    'grape',
    'pineapple',
    'blueberry',
  ];
  final querySubject = BehaviorSubject<String>();

  querySubject.stream
      .debounceTime(const Duration(milliseconds: 300))
      .where((q) => q.isNotEmpty)
      .map((query) {
        final results =
            allFruits.where((fruit) => fruit.contains(query)).toList();
        return results;
      })
      .listen((results) {
        print('Search results: $results');
      });

  querySubject.add('ap');
  await Future.delayed(Duration(milliseconds: 100));
  querySubject.add('app');
  await Future.delayed(Duration(milliseconds: 500));
  querySubject.add('a');
  await Future.delayed(Duration(milliseconds: 500));
  querySubject.add('an');
}
