import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Immutable audit log of event RSVP status changes.
class RsvpChangesRecord extends FirestoreRecord {
  RsvpChangesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "event_id" field.
  String? _eventId;
  String get eventId => _eventId ?? '';
  bool hasEventId() => _eventId != null;

  // "event_ref" field.
  DocumentReference? _eventRef;
  DocumentReference? get eventRef => _eventRef;
  bool hasEventRef() => _eventRef != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "group_names" field.
  List<String>? _groupNames;
  List<String> get groupNames => _groupNames ?? const [];
  bool hasGroupNames() => _groupNames != null;

  // "from_status" field.
  String? _fromStatus;
  String get fromStatus => _fromStatus ?? '';
  bool hasFromStatus() => _fromStatus != null;

  // "to_status" field.
  String? _toStatus;
  String get toStatus => _toStatus ?? '';
  bool hasToStatus() => _toStatus != null;

  // "changed_at" field.
  DateTime? _changedAt;
  DateTime? get changedAt => _changedAt;
  bool hasChangedAt() => _changedAt != null;

  void _initializeFields() {
    _eventId = snapshotData['event_id'] as String?;
    _eventRef = snapshotData['event_ref'] as DocumentReference?;
    _userId = snapshotData['user_id'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _groupNames = getDataList(snapshotData['group_names']);
    _fromStatus = snapshotData['from_status'] as String?;
    _toStatus = snapshotData['to_status'] as String?;
    _changedAt = snapshotData['changed_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rsvp_changes');

  static Stream<RsvpChangesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RsvpChangesRecord.fromSnapshot(s));

  static Future<RsvpChangesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RsvpChangesRecord.fromSnapshot(s));

  static RsvpChangesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RsvpChangesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RsvpChangesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RsvpChangesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RsvpChangesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RsvpChangesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRsvpChangesRecordData({
  String? eventId,
  DocumentReference? eventRef,
  String? userId,
  String? userName,
  String? fromStatus,
  String? toStatus,
  DateTime? changedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'event_id': eventId,
      'event_ref': eventRef,
      'user_id': userId,
      'user_name': userName,
      'from_status': fromStatus,
      'to_status': toStatus,
      'changed_at': changedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class RsvpChangesRecordDocumentEquality implements Equality<RsvpChangesRecord> {
  const RsvpChangesRecordDocumentEquality();

  @override
  bool equals(RsvpChangesRecord? e1, RsvpChangesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.eventId == e2?.eventId &&
        e1?.eventRef == e2?.eventRef &&
        e1?.userId == e2?.userId &&
        e1?.userName == e2?.userName &&
        listEquality.equals(e1?.groupNames, e2?.groupNames) &&
        e1?.fromStatus == e2?.fromStatus &&
        e1?.toStatus == e2?.toStatus &&
        e1?.changedAt == e2?.changedAt;
  }

  @override
  int hash(RsvpChangesRecord? e) => const ListEquality().hash([
        e?.eventId,
        e?.eventRef,
        e?.userId,
        e?.userName,
        e?.groupNames,
        e?.fromStatus,
        e?.toStatus,
        e?.changedAt
      ]);

  @override
  bool isValidKey(Object? o) => o is RsvpChangesRecord;
}
