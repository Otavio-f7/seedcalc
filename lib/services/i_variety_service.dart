import 'package:seedcalc/models/variety.dart';
import 'package:seedcalc/services/pref_variety_service.dart';

abstract class IVarietyService {
  Future<void> saveVariety(Variety variety);
  Future<List<Variety>> allVariety();

  factory IVarietyService(){
    return PrefVarietyService();
  }
}