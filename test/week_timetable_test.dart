import 'package:mwc1_06_task/week_timetable.dart';
import 'package:test/test.dart';

void main() {
  test('Timetable tests', () {
    WeekTimetable weekTimetable = WeekTimetable();
    weekTimetable.addTask('Monday', 'jogging');
    weekTimetable.addTask('mondaY', 'reading');
    weekTimetable.addTask('saturday', 'jogging');
    weekTimetable.addTask('monday', 'jogging');
    expect(
        weekTimetable.getTasksAt('monDay'), ['jogging', 'reading', 'jogging']);
    expect(weekTimetable.getTasksAt('saturday'), ['jogging']);
    expect(weekTimetable.getTasksAt('sunday'), []);
    expect(weekTimetable.getTasksAt('no-day'), []);

    weekTimetable.removeAll('jogging');
    expect(weekTimetable.getTasksAt('monDay'), ['reading']);
    expect(weekTimetable.getTasksAt('saturday'), []);
    expect(weekTimetable.getTasksAt('sunday'), []);
    expect(weekTimetable.getTasksAt('no-day'), []);
  });
}
