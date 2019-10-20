import 'package:dartz/dartz.dart';
import 'package:polysleep/features/schedule_manager/data/models/sleep_schedule_model.dart';
import 'package:polysleep/features/schedule_manager/domain/entities/sleep_schedule.dart';
import '../../../../core/error/failure.dart';
import '../entities/sleep_segment.dart';

abstract class ScheduleEditorRepository {
  Future<Either<Failure, SleepSegment>> putTemporarySleepSegment(
      SleepSegment segment);

  // If no current schedule found, return the monophasic schedule as default.
  Future<Either<Failure, SleepSchedule>> getCurrentSchedule();

  Future<Either<Failure, SleepSchedule>> getDefaultSchedule();

  Future<Either<Failure, SleepSchedule>> putCurrentSchedule(
      SleepSchedule schedule);
}
