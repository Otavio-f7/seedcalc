import 'package:mobx/mobx.dart';
import 'package:seedcalc/models/area.dart';

part  'area.store.g.dart';

class AreaStore = _AreaStore with _$AreaStore;

abstract class _AreaStore with Store{

  @observable
  ObservableList listAreas = ObservableList();

  @computed
  int get qntAreas => listAreas.length;

  @action
  void addArea(Area area){
    listAreas.add(area);
  }

  @action
  void removeArea(Area area){
    listAreas.removeWhere((a)=> a.id == area.id);
  }

  @action
  void editeArea(Area area){
    int i = listAreas.indexOf(area);
    listAreas[i] = area;
  }


  // add remover editar 
}