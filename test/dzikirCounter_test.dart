import 'package:flutter_mobx_tutorials/main.dart';
import 'package:flutter_mobx_tutorials/stores/dzikir_counter.dart';
import 'package:flutter_test/flutter_test.dart';



void main() {


  group(
    "Mengecek class DzikirCounterStores",
      (){
        final DzikirCounterStores dzikirCounterStores = DzikirCounterStores();
        test("initial dzikir counter", (){
          expect(dzikirCounterStores.dzikirCount.toString(), equals("0"));
        });

        test("decrement tidak boleh ke minus",
            (){
              dzikirCounter.dzikirCount = 0;
              dzikirCounterStores.decreaseDzikirCount();
              expect(dzikirCounterStores.dzikirCount.toString(), equals("0"));
            }
        );
        test("test increment", (){
          dzikirCounter.dzikirCount = 0;
          dzikirCounterStores.increaseDzikirCount();
          expect(dzikirCounterStores.dzikirCount.toString(), equals("1"));
        });

        test("reset counter ke 0", (){
          dzikirCounter.dzikirCount = 52;
          dzikirCounterStores.resetDzikirCount();
          expect(dzikirCounterStores.dzikirCount.toString(), equals("0"));
        });
      }
  );


}