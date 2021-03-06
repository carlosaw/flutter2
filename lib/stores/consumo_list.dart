import 'package:mobx/mobx.dart';

part 'consumo_list.g.dart';

class ConsumoList = _ConsumoList with _$ConsumoList;

abstract class _ConsumoList with Store {
  @observable
  ObservableList<double> list = ObservableList<double>();

  @computed
  String get mediaGeral {
    if (list.length > 0) {
      double total = 0;

      list.forEach((element) {
        total = total + element;
      });
      return (total / list.length).toStringAsFixed(2);
    } else {
      return '0.00';
    }
  }

  @action
  void addConsumo(double data) {
    list.add(data);
  }

  @action
  void limpar() => list = ObservableList<double>();
}
