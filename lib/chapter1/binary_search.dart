class BinarySearch<T> {
  final List<T> items;

  BinarySearch({required this.items});

  int? findItem(T item) {
    int start = 0;
    int end = items.length - 1;
    while (start <= end) {
      int middleIndex = ((start + end) / 2).ceil();
      T itm = items[middleIndex]!;
      print("S $start M $middleIndex E $end");
      if (itm == item) {
        return middleIndex;
      }

      if (itm > item) {
        end = --middleIndex;
      } else {
        start = ++middleIndex;
      }
    }
    return null;
  }
}

class UnsupportedTypeError extends Error {}

extension Check on Object {
  operator >(diff) {
    switch (diff.runtimeType) {
      case int:
        return (this as int) > (diff as int);
      case double:
        return (this as double) > (diff as double);
      default:
        throw UnsupportedTypeError();
    }
  }
}
