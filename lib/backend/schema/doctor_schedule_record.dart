import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DoctorScheduleRecord extends FirestoreRecord {
  DoctorScheduleRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "doctor" field.
  DocumentReference? _doctor;
  DocumentReference? get doctor => _doctor;
  bool hasDoctor() => _doctor != null;

  // "day" field.
  String? _day;
  String get day => _day ?? '';
  bool hasDay() => _day != null;

  // "time" field.
  List<String>? _time;
  List<String> get time => _time ?? const [];
  bool hasTime() => _time != null;

  void _initializeFields() {
    _doctor = snapshotData['doctor'] as DocumentReference?;
    _day = snapshotData['day'] as String?;
    _time = getDataList(snapshotData['time']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('doctor_schedule');

  static Stream<DoctorScheduleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DoctorScheduleRecord.fromSnapshot(s));

  static Future<DoctorScheduleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DoctorScheduleRecord.fromSnapshot(s));

  static DoctorScheduleRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DoctorScheduleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DoctorScheduleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DoctorScheduleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DoctorScheduleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DoctorScheduleRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDoctorScheduleRecordData({
  DocumentReference? doctor,
  String? day,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'doctor': doctor,
      'day': day,
    }.withoutNulls,
  );

  return firestoreData;
}

class DoctorScheduleRecordDocumentEquality
    implements Equality<DoctorScheduleRecord> {
  const DoctorScheduleRecordDocumentEquality();

  @override
  bool equals(DoctorScheduleRecord? e1, DoctorScheduleRecord? e2) {
    const listEquality = ListEquality();
    return e1?.doctor == e2?.doctor &&
        e1?.day == e2?.day &&
        listEquality.equals(e1?.time, e2?.time);
  }

  @override
  int hash(DoctorScheduleRecord? e) =>
      const ListEquality().hash([e?.doctor, e?.day, e?.time]);

  @override
  bool isValidKey(Object? o) => o is DoctorScheduleRecord;
}
