import 'package:flutter_test/flutter_test.dart';
import 'package:my_app1/address_info.dart';
import 'package:my_app1/district.dart';
import 'package:my_app1/province.dart';
import 'package:my_app1/user_info.dart';
import 'package:my_app1/ward.dart';

void main(){
      var province=Province(
      id: '01',
      name: 'Thành phố Hà Nội',
      level: 'Thành phố Trung Ương',);
      var district=District(
      id: '01',
      name: 'Quận Ba Đình',
      level: 'Quận',
      provinceId: '01',
    );
     var ward=Ward(
      id: '01',
      name: 'Phường Phúc Xã',
      level: 'Phường',
      provinceId: '01',
      districtId: '01'
    );
      var address=AddressInfo(
      province: province,
      district: district,
      ward: ward,
      street: 'Đường Yên Phụ',
    );
    group('Text UserInfo:', () {
    test('contructor UserInfo', (){
    var userInfo=UserInfo(
      name: 'Nguyễn Tuấn Đạt',
      email: 'tuandat@gmail.com',
      phoneNumber: '01230312394',
      birthDate: DateTime(2003,12,31),
      address: address,
    );
  expect(userInfo.name, equals('Nguyễn Tuấn Đạt'));
  expect(userInfo.email, equals('tuandat@gmail.com'));
  expect(userInfo.phoneNumber, equals('01230312394'));
  expect(userInfo.birthDate, equals(DateTime(2003,12,31)));
  expect(userInfo.address, equals(address));
  });
});
}