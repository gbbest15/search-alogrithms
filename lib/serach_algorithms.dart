int calculate() {
  return binarySearch([12, 34, 55, 5, 65, 767, 898, 434, 343], 343);
}

binarySearch(List<int> value, int searchForInTheList) {
  var start = 0;
  var end = value.length - 1;
  var middle = ((start + end) / 2).round();
  while (value[middle] != searchForInTheList && start <= end) {
    if (searchForInTheList < value[middle]) {
      end = middle - 1;
    } else {
      start = middle + 1;
    }
    middle = ((start + end) / 2).round();
  }
  if (value[middle] == searchForInTheList) {
    return middle;
  }
  return -1;
}
