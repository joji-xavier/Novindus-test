part of 'patient_update_bloc.dart';

@freezed
class PatientUpdateEvent with _$PatientUpdateEvent {
  const factory PatientUpdateEvent.started() = _Started;
}