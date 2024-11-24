import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ScheduleRecord extends FirestoreRecord {
  ScheduleRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "reason" field.
  String? _reason;
  String get reason => _reason ?? '';
  bool hasReason() => _reason != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "weight" field.
  int? _weight;
  int get weight => _weight ?? 0;
  bool hasWeight() => _weight != null;

  // "temperature" field.
  int? _temperature;
  int get temperature => _temperature ?? 0;
  bool hasTemperature() => _temperature != null;

  // "blood_pressure" field.
  int? _bloodPressure;
  int get bloodPressure => _bloodPressure ?? 0;
  bool hasBloodPressure() => _bloodPressure != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "patient" field.
  DocumentReference? _patient;
  DocumentReference? get patient => _patient;
  bool hasPatient() => _patient != null;

  // "doctor" field.
  DocumentReference? _doctor;
  DocumentReference? get doctor => _doctor;
  bool hasDoctor() => _doctor != null;

  // "consultation" field.
  DocumentReference? _consultation;
  DocumentReference? get consultation => _consultation;
  bool hasConsultation() => _consultation != null;

  // "allergies" field.
  List<String>? _allergies;
  List<String> get allergies => _allergies ?? const [];
  bool hasAllergies() => _allergies != null;

  void _initializeFields() {
    _reason = snapshotData['reason'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _weight = castToType<int>(snapshotData['weight']);
    _temperature = castToType<int>(snapshotData['temperature']);
    _bloodPressure = castToType<int>(snapshotData['blood_pressure']);
    _status = snapshotData['status'] as String?;
    _patient = snapshotData['patient'] as DocumentReference?;
    _doctor = snapshotData['doctor'] as DocumentReference?;
    _consultation = snapshotData['consultation'] as DocumentReference?;
    _allergies = getDataList(snapshotData['allergies']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('schedule');

  static Stream<ScheduleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ScheduleRecord.fromSnapshot(s));

  static Future<ScheduleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ScheduleRecord.fromSnapshot(s));

  static ScheduleRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ScheduleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ScheduleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ScheduleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ScheduleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ScheduleRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createScheduleRecordData({
  String? reason,
  DateTime? date,
  int? weight,
  int? temperature,
  int? bloodPressure,
  String? status,
  DocumentReference? patient,
  DocumentReference? doctor,
  DocumentReference? consultation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'reason': reason,
      'date': date,
      'weight': weight,
      'temperature': temperature,
      'blood_pressure': bloodPressure,
      'status': status,
      'patient': patient,
      'doctor': doctor,
      'consultation': consultation,
    }.withoutNulls,
  );

  return firestoreData;
}

class ScheduleRecordDocumentEquality implements Equality<ScheduleRecord> {
  const ScheduleRecordDocumentEquality();

  @override
  bool equals(ScheduleRecord? e1, ScheduleRecord? e2) {
    const listEquality = ListEquality();
    return e1?.reason == e2?.reason &&
        e1?.date == e2?.date &&
        e1?.weight == e2?.weight &&
        e1?.temperature == e2?.temperature &&
        e1?.bloodPressure == e2?.bloodPressure &&
        e1?.status == e2?.status &&
        e1?.patient == e2?.patient &&
        e1?.doctor == e2?.doctor &&
        e1?.consultation == e2?.consultation &&
        listEquality.equals(e1?.allergies, e2?.allergies);
  }

  @override
  int hash(ScheduleRecord? e) => const ListEquality().hash([
        e?.reason,
        e?.date,
        e?.weight,
        e?.temperature,
        e?.bloodPressure,
        e?.status,
        e?.patient,
        e?.doctor,
        e?.consultation,
        e?.allergies
      ]);

  @override
  bool isValidKey(Object? o) => o is ScheduleRecord;
}
