import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReadReceiptsRecord extends FirestoreRecord {
  ReadReceiptsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "message_id" field.
  String? _messageId;
  String get messageId => _messageId ?? '';
  bool hasMessageId() => _messageId != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "read_at" field.
  DateTime? _readAt;
  DateTime? get readAt => _readAt;
  bool hasReadAt() => _readAt != null;

  // "confirmed_at" field.
  DateTime? _confirmedAt;
  DateTime? get confirmedAt => _confirmedAt;
  bool hasConfirmedAt() => _confirmedAt != null;

  // "message_ref" field.
  DocumentReference? _messageRef;
  DocumentReference? get messageRef => _messageRef;
  bool hasMessageRef() => _messageRef != null;

  void _initializeFields() {
    _messageId = snapshotData['message_id'] as String?;
    _userId = snapshotData['user_id'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _readAt = snapshotData['read_at'] as DateTime?;
    _confirmedAt = snapshotData['confirmed_at'] as DateTime?;
    _messageRef = snapshotData['message_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('read_receipts');

  static Stream<ReadReceiptsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReadReceiptsRecord.fromSnapshot(s));

  static Future<ReadReceiptsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReadReceiptsRecord.fromSnapshot(s));

  static ReadReceiptsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReadReceiptsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReadReceiptsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReadReceiptsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReadReceiptsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReadReceiptsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReadReceiptsRecordData({
  String? messageId,
  String? userId,
  String? userName,
  DateTime? readAt,
  DateTime? confirmedAt,
  DocumentReference? messageRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'message_id': messageId,
      'user_id': userId,
      'user_name': userName,
      'read_at': readAt,
      'confirmed_at': confirmedAt,
      'message_ref': messageRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReadReceiptsRecordDocumentEquality
    implements Equality<ReadReceiptsRecord> {
  const ReadReceiptsRecordDocumentEquality();

  @override
  bool equals(ReadReceiptsRecord? e1, ReadReceiptsRecord? e2) {
    return e1?.messageId == e2?.messageId &&
        e1?.userId == e2?.userId &&
        e1?.userName == e2?.userName &&
        e1?.readAt == e2?.readAt &&
        e1?.confirmedAt == e2?.confirmedAt &&
        e1?.messageRef == e2?.messageRef;
  }

  @override
  int hash(ReadReceiptsRecord? e) => const ListEquality().hash([
        e?.messageId,
        e?.userId,
        e?.userName,
        e?.readAt,
        e?.confirmedAt,
        e?.messageRef
      ]);

  @override
  bool isValidKey(Object? o) => o is ReadReceiptsRecord;
}
