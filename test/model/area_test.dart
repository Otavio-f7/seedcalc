import 'package:flutter_test/flutter_test.dart';
import 'package:seedcalc/models/area.dart';

void main() {
  group('Area Class Tests', (){
    test('Should return a Area', (){
      Map<String, dynamic> json = {
        'lineSpacing' : '5',
        'squareMeters' : '10',
      };
      expect(Area.fromJson(json), isA<Area>());
    }); 
    test('Should return a JSON', (){
      Area area = Area(lineSpacing: 10, squareMeters: 10);
      expect(area.toJson(), isA<Map<String, dynamic>>());
    }); 
  });
}