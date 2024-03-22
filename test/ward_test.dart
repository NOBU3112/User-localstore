 import 'package:flutter_test/flutter_test.dart';
import 'package:my_app1/ward.dart';

void main(){
 var ward=Ward(
      id: '01',
      name: 'Phường Phúc Xã',
      level: 'Phường',
      provinceId: '01',
      districtId: '01'
    );
  group('Text Warp:', () {
    test('contructor Ward', (){
  expect(ward.id, equals('01'));
  expect(ward.name, equals('Phường Phúc Xã'));
  expect(ward.level, equals('Phường'));
  expect(ward.provinceId, equals('01'));
  expect(ward.districtId, equals('01'));
  });
});}