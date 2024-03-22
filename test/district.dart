 import 'package:flutter_test/flutter_test.dart';
 import 'package:my_app1/district.dart';
void main(){


var district=District(
      id: '01',
      name: 'Quận Ba Đình',
      level: 'Quận',
      provinceId: '01',
    );
  group('Text District:', () {
    test('contructor District', (){
  expect(district.id, equals('01'));
  expect(district.name, equals('Quận Ba Đình'));
  expect(district.level, equals('Quận'));
  expect(district.provinceId, equals('01'));
  });
});}