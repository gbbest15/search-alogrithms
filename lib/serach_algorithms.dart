int calculate() {
  return binarySearch([12, 13, 14, 15, 16, 17, 18, 19, 20], 19);
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
