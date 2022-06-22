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

  operator <(diff) {
    switch (diff.runtimeType) {
      case int:
        return (this as int) < (diff as int);
      case double:
        return (this as double) < (diff as double);
      default:
        throw UnsupportedTypeError();
    }
  }
}