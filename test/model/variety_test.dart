import 'package:flutter_test/flutter_test.dart';
import 'package:seedcalc/models/variety.dart';

void main() {
  group('Variety class tests', (){
    test('Should return a Variety', (){
      Map<String, dynamic> json = {
        'population' : '10',
        'thousandSeedWeight' : '0.555',
        'germinationRate' : '0.85',
      };
      // Variety vari = Variety.fromJson(json);

      expect(Variety.fromJson(json), isInstanceOf<Variety>());
    });
    test('Should return a JSON', (){
      Variety variety = Variety(
        name: 'Milho 1',
        population: 100, 
        thousandSeedWeight: 0.006, 
        germinationRate: 0.9
      );

      expect(variety.toJson(), isA<Map<String, dynamic>>());
    });
  });
}