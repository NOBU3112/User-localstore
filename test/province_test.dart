import 'package:flutter_test/flutter_test.dart';

import 'package:my_app1/province.dart';
void main() {

group('text class', () { 
  group('Text Province:', () {
      var province=Province(
      id: '01',
      name: 'Thành phố Hà Nội',
      level: 'Thành phố Trung Ương',
    );
    test('contructor Province', (){
  expect(province.id, equals('01'));
  expect(province.name, equals('Thành phố Hà Nội'));
  expect(province.level, equals('Thành phố Trung Ương'));
  });
});
});
}
