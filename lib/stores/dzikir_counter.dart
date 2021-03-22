import 'package:mobx/mobx.dart';
part 'dzikir_counter.g.dart';

class DzikirCounterStores = _DzikirCounterStores with _$DzikirCounterStores;

abstract class _DzikirCounterStores with Store {

  @observable
  int dzikirCount = 0;

  @action
  void increaseDzikirCount()  {
    dzikirCount++;
  }

  @action
  void decreaseDzikirCount()  {
    dzikirCount--;
  }

}