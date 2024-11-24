import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConsultationRecord extends FirestoreRecord {
  ConsultationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "schedule" field.
  DocumentReference? _schedule;
  DocumentReference? get schedule => _schedule;
  bool hasSchedule() => _schedule != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "diagnosis" field.
  String? _diagnosis;
  String get diagnosis => _diagnosis ?? '';
  bool hasDiagnosis() => _diagnosis != null;

  // "remarks" field.
  String? _remarks;
  String get remarks => _remarks ?? '';
  bool hasRemarks() => _remarks != null;

  // "followup" field.
  DateTime? _followup;
  DateTime? get followup => _followup;
  bool hasFollowup() => _followup != null;

  // "symptoms" field.
  List<String>? _symptoms;
  List<String> get symptoms => _symptoms ?? const [];
  bool hasSymptoms() => _symptoms != null;

  void _initializeFields() {
    _schedule = snapshotData['schedule'] as DocumentReference?;
    _date = snapshotData['date'] as DateTime?;
    _diagnosis = snapshotData['diagnosis'] as String?;
    _remarks = snapshotData['remarks'] as String?;
    _followup = snapshotData['followup'] as DateTime?;
    _symptoms = getDataList(snapshotData['symptoms']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('consultation');

  static Stream<ConsultationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ConsultationRecord.fromSnapshot(s));

  static Future<ConsultationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ConsultationRecord.fromSnapshot(s));

  static ConsultationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ConsultationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConsultationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConsultationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConsultationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ConsultationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createConsultationRecordData({
  DocumentReference? schedule,
  DateTime? date,
  String? diagnosis,
  String? remarks,
  DateTime? followup,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'schedule': schedule,
      'date': date,
      'diagnosis': diagnosis,
      'remarks': remarks,
      'followup': followup,
    }.withoutNulls,
  );

  return firestoreData;
}

class ConsultationRecordDocumentEquality
    implements Equality<ConsultationRecord> {
  const ConsultationRecordDocumentEquality();

  @override
  bool equals(ConsultationRecord? e1, ConsultationRecord? e2) {
    const listEquality = ListEquality();
    return e1?.schedule == e2?.schedule &&
        e1?.date == e2?.date &&
        e1?.diagnosis == e2?.diagnosis &&
        e1?.remarks == e2?.remarks &&
        e1?.followup == e2?.followup &&
        listEquality.equals(e1?.symptoms, e2?.symptoms);
  }

  @override
  int hash(ConsultationRecord? e) => const ListEquality().hash([
        e?.schedule,
        e?.date,
        e?.diagnosis,
        e?.remarks,
        e?.followup,
        e?.symptoms
      ]);

  @override
  bool isValidKey(Object? o) => o is ConsultationRecord;
}
