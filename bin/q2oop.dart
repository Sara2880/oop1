class Holiday {
  String name;

  int day;

  String month;

  Holiday(this.name, this.day, this.month);

  bool isSameMonth(Holiday first, Holiday second) {
    if (first.month == second.month) {
      return true;
    }
    else {
      return false;
    }
  }

  double avgDate(List<Holiday>holidays) {
    int sum = 0;
    for (Holiday h in holidays) {
     sum+=h.day;
    }
    double avg= sum/holidays.length;
    return avg;
  }

}
void main(){
  Holiday h1 = Holiday('Independence Day', 4, 'July');
  Holiday h2 = Holiday('Summer', 28, 'August');
  Holiday h3 = Holiday('ay 7aga', 9, 'July');
  print(h1.isSameMonth(h1, h2));
  print(h1.isSameMonth(h1, h3));
  print(h1.avgDate([h1, h2]));
  print(h1.avgDate([h1, h2,h3]));
}