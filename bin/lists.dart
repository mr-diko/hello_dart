var months = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
];
void main(List<String> args) {
  months.add('December');
  var marchIndex = months.indexOf('March');
  months.removeAt(marchIndex);
  months.insert(marchIndex, 'March');

  print(months);
}
