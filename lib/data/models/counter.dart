/// A simple data model representing a counter.
class Counter {
  /// The current count value of the counter.
  final int count;

  /// A boolean property indicating whether the counter value is positive.
  bool get isPositive => count > 0;

  /// A boolean property indicating whether the counter value is negative.
  bool get isNegative => count < 0;

  /// Constructor for creating a Counter instance with an initial count.
  Counter(this.count);
}
