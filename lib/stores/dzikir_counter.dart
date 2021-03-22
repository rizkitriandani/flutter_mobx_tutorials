import 'package:mobx/mobx.dart';
part 'dzikir_counter.g.dart';

class DzikirCounterStores = _DzikirCounterStores with _$DzikirCounterStores;

abstract class _DzikirCounterStores with Store {

  @observable
  int dzikirCount = 0;

  @action
  void increaseDzikirCount()  {
    if(dzikirCount < 99 ) {
      dzikirCount++;
    } else{
      dzikirCount = 0;
    }
  }

  @action
  void decreaseDzikirCount()  {
    if(dzikirCount > 0){
      dzikirCount--;
    }
  }

  @action
  void resetDzikirCount() {
    dzikirCount = 0;
  }

}