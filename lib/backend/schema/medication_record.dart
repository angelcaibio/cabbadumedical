import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedicationRecord extends FirestoreRecord {
  MedicationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "consultation" field.
  DocumentReference? _consultation;
  DocumentReference? get consultation => _consultation;
  bool hasConsultation() => _consultation != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "dosage" field.
  String? _dosage;
  String get dosage => _dosage ?? '';
  bool hasDosage() => _dosage != null;

  // "frequency" field.
  String? _frequency;
  String get frequency => _frequency ?? '';
  bool hasFrequency() => _frequency != null;

  // "duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "instruction" field.
  String? _instruction;
  String get instruction => _instruction ?? '';
  bool hasInstruction() => _instruction != null;

  // "form" field.
  String? _form;
  String get form => _form ?? '';
  bool hasForm() => _form != null;

  void _initializeFields() {
    _consultation = snapshotData['consultation'] as DocumentReference?;
    _name = snapshotData['name'] as String?;
    _dosage = snapshotData['dosage'] as String?;
    _frequency = snapshotData['frequency'] as String?;
    _duration = snapshotData['duration'] as String?;
    _instruction = snapshotData['instruction'] as String?;
    _form = snapshotData['form'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('medication');

  static Stream<MedicationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MedicationRecord.fromSnapshot(s));

  static Future<MedicationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MedicationRecord.fromSnapshot(s));

  static MedicationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MedicationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MedicationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MedicationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MedicationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MedicationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMedicationRecordData({
  DocumentReference? consultation,
  String? name,
  String? dosage,
  String? frequency,
  String? duration,
  String? instruction,
  String? form,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'consultation': consultation,
      'name': name,
      'dosage': dosage,
      'frequency': frequency,
      'duration': duration,
      'instruction': instruction,
      'form': form,
    }.withoutNulls,
  );

  return firestoreData;
}

class MedicationRecordDocumentEquality implements Equality<MedicationRecord> {
  const MedicationRecordDocumentEquality();

  @override
  bool equals(MedicationRecord? e1, MedicationRecord? e2) {
    return e1?.consultation == e2?.consultation &&
        e1?.name == e2?.name &&
        e1?.dosage == e2?.dosage &&
        e1?.frequency == e2?.frequency &&
        e1?.duration == e2?.duration &&
        e1?.instruction == e2?.instruction &&
        e1?.form == e2?.form;
  }

  @override
  int hash(MedicationRecord? e) => const ListEquality().hash([
        e?.consultation,
        e?.name,
        e?.dosage,
        e?.frequency,
        e?.duration,
        e?.instruction,
        e?.form
      ]);

  @override
  bool isValidKey(Object? o) => o is MedicationRecord;
}
