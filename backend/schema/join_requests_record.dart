import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JoinRequestsRecord extends FirestoreRecord {
  JoinRequestsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "group_id" field.
  String? _groupId;
  String get groupId => _groupId ?? '';
  bool hasGroupId() => _groupId != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "requested_at" field.
  DateTime? _requestedAt;
  DateTime? get requestedAt => _requestedAt;
  bool hasRequestedAt() => _requestedAt != null;

  // "decided_at" field.
  DateTime? _decidedAt;
  DateTime? get decidedAt => _decidedAt;
  bool hasDecidedAt() => _decidedAt != null;

  // "decided_by" field.
  String? _decidedBy;
  String get decidedBy => _decidedBy ?? '';
  bool hasDecidedBy() => _decidedBy != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "group_name" field.
  String? _groupName;
  String get groupName => _groupName ?? '';
  bool hasGroupName() => _groupName != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as String?;
    _groupId = snapshotData['group_id'] as String?;
    _status = snapshotData['status'] as String?;
    _requestedAt = snapshotData['requested_at'] as DateTime?;
    _decidedAt = snapshotData['decided_at'] as DateTime?;
    _decidedBy = snapshotData['decided_by'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _groupName = snapshotData['group_name'] as String?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('join_requests');

  static Stream<JoinRequestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JoinRequestsRecord.fromSnapshot(s));

  static Future<JoinRequestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JoinRequestsRecord.fromSnapshot(s));

  static JoinRequestsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JoinRequestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JoinRequestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JoinRequestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JoinRequestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JoinRequestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJoinRequestsRecordData({
  String? userId,
  String? groupId,
  String? status,
  DateTime? requestedAt,
  DateTime? decidedAt,
  String? decidedBy,
  String? userName,
  String? groupName,
  DocumentReference? userRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'group_id': groupId,
      'status': status,
      'requested_at': requestedAt,
      'decided_at': decidedAt,
      'decided_by': decidedBy,
      'user_name': userName,
      'group_name': groupName,
      'user_ref': userRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class JoinRequestsRecordDocumentEquality
    implements Equality<JoinRequestsRecord> {
  const JoinRequestsRecordDocumentEquality();

  @override
  bool equals(JoinRequestsRecord? e1, JoinRequestsRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.groupId == e2?.groupId &&
        e1?.status == e2?.status &&
        e1?.requestedAt == e2?.requestedAt &&
        e1?.decidedAt == e2?.decidedAt &&
        e1?.decidedBy == e2?.decidedBy &&
        e1?.userName == e2?.userName &&
        e1?.groupName == e2?.groupName &&
        e1?.userRef == e2?.userRef;
  }

  @override
  int hash(JoinRequestsRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.groupId,
        e?.status,
        e?.requestedAt,
        e?.decidedAt,
        e?.decidedBy,
        e?.userName,
        e?.groupName,
        e?.userRef
      ]);

  @override
  bool isValidKey(Object? o) => o is JoinRequestsRecord;
}
