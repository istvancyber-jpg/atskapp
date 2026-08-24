import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// One deterministic response per event and user, with display snapshots.
class RsvpsRecord extends FirestoreRecord {
  RsvpsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "event_id" field.
  String? _eventId;
  String get eventId => _eventId ?? '';
  bool hasEventId() => _eventId != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "responded_at" field.
  DateTime? _respondedAt;
  DateTime? get respondedAt => _respondedAt;
  bool hasRespondedAt() => _respondedAt != null;

  // "event_ref" field.
  DocumentReference? _eventRef;
  DocumentReference? get eventRef => _eventRef;
  bool hasEventRef() => _eventRef != null;

  // "group_names" field.
  List<String>? _groupNames;
  List<String> get groupNames => _groupNames ?? const [];
  bool hasGroupNames() => _groupNames != null;

  void _initializeFields() {
    _eventId = snapshotData['event_id'] as String?;
    _userId = snapshotData['user_id'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _status = snapshotData['status'] as String?;
    _respondedAt = snapshotData['responded_at'] as DateTime?;
    _eventRef = snapshotData['event_ref'] as DocumentReference?;
    _groupNames = getDataList(snapshotData['group_names']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rsvps');

  static Stream<RsvpsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RsvpsRecord.fromSnapshot(s));

  static Future<RsvpsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RsvpsRecord.fromSnapshot(s));

  static RsvpsRecord fromSnapshot(DocumentSnapshot snapshot) => RsvpsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RsvpsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RsvpsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RsvpsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RsvpsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRsvpsRecordData({
  String? eventId,
  String? userId,
  String? userName,
  String? status,
  DateTime? respondedAt,
  DocumentReference? eventRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'event_id': eventId,
      'user_id': userId,
      'user_name': userName,
      'status': status,
      'responded_at': respondedAt,
      'event_ref': eventRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class RsvpsRecordDocumentEquality implements Equality<RsvpsRecord> {
  const RsvpsRecordDocumentEquality();

  @override
  bool equals(RsvpsRecord? e1, RsvpsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.eventId == e2?.eventId &&
        e1?.userId == e2?.userId &&
        e1?.userName == e2?.userName &&
        e1?.status == e2?.status &&
        e1?.respondedAt == e2?.respondedAt &&
        e1?.eventRef == e2?.eventRef &&
        listEquality.equals(e1?.groupNames, e2?.groupNames);
  }

  @override
  int hash(RsvpsRecord? e) => const ListEquality().hash([
        e?.eventId,
        e?.userId,
        e?.userName,
        e?.status,
        e?.respondedAt,
        e?.eventRef,
        e?.groupNames
      ]);

  @override
  bool isValidKey(Object? o) => o is RsvpsRecord;
}
