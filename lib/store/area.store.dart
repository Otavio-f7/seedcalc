import 'package:mobx/mobx.dart';

part  'area.store.g.dart';

class AreaStore = _AreaStore with _$AreaStore;

abstract class _AreaStore with Store{
  @observable
  ObservableList listAreas = ObservableList();

  // add remover editar 
}