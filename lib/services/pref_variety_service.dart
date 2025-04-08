import 'package:seedcalc/models/variety.dart';
import 'package:seedcalc/services/i_variety_service.dart';

class PrefVarietyService implements IVarietyService{

  final List<Variety> tempoList = [
      Variety(
        name: 'Milho 1',
        population: 10000, 
        thousandSeedWeight: 1, 
        germinationRate: 0.1,
      ),
      Variety(
        name: 'Milho 2',
        population: 2, 
        thousandSeedWeight: 2, 
        germinationRate: 0.2,
      ),
    ];
  @override
  Future<List<Variety>> allVariety() async {
    return tempoList;
  }

  @override
  Future<void> saveVariety(Variety variety) async {
    tempoList.add(variety);
  }
}