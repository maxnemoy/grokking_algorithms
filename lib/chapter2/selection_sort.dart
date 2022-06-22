import 'package:grokking_algorithms/utils/check_extension.dart';

class SelectionSort<T> {
  final List<T> list;

  SelectionSort({required this.list});

  int findSmallest() {
    T smallest = list.first;
    int index = 0;

    for (int i = 0; i < list.length; i++) {
      if (list[i]! < smallest!) {
        index = i;
        smallest = list[i];
      }
    }
    return index;
  }

  void selectionSort() {
    List<T> sorted = [];
    int listLength = list.length;
    
    for (int i = 0; i < listLength; i++) {
      int smallest = findSmallest();
      sorted.add(list[smallest]);
      list.removeAt(smallest);
    }

    list.addAll(sorted);
  }
}
