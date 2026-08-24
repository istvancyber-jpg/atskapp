import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessagesRecord extends FirestoreRecord {
  MessagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "public_text" field.
  String? _publicText;
  String get publicText => _publicText ?? '';
  bool hasPublicText() => _publicText != null;

  // "internal_text" field.
  String? _internalText;
  String get internalText => _internalText ?? '';
  bool hasInternalText() => _internalText != null;

  // "sender_id" field.
  String? _senderId;
  String get senderId => _senderId ?? '';
  bool hasSenderId() => _senderId != null;

  // "sender_name" field.
  String? _senderName;
  String get senderName => _senderName ?? '';
  bool hasSenderName() => _senderName != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "is_internal_only" field.
  bool? _isInternalOnly;
  bool get isInternalOnly => _isInternalOnly ?? false;
  bool hasIsInternalOnly() => _isInternalOnly != null;

  // "group_ids" field.
  List<String>? _groupIds;
  List<String> get groupIds => _groupIds ?? const [];
  bool hasGroupIds() => _groupIds != null;

  // "group_names" field.
  List<String>? _groupNames;
  List<String> get groupNames => _groupNames ?? const [];
  bool hasGroupNames() => _groupNames != null;

  // "sender_initial" field.
  String? _senderInitial;
  String get senderInitial => _senderInitial ?? '';
  bool hasSenderInitial() => _senderInitial != null;

  // "sender_role" field.
  String? _senderRole;
  String get senderRole => _senderRole ?? '';
  bool hasSenderRole() => _senderRole != null;

  // "sender_color" field.
  String? _senderColor;
  String get senderColor => _senderColor ?? '';
  bool hasSenderColor() => _senderColor != null;

  // "group_id" field.
  String? _groupId;
  String get groupId => _groupId ?? '';
  bool hasGroupId() => _groupId != null;

  // "group_name" field.
  String? _groupName;
  String get groupName => _groupName ?? '';
  bool hasGroupName() => _groupName != null;

  // "confirmation_requested" field.
  bool? _confirmationRequested;
  bool get confirmationRequested => _confirmationRequested ?? false;
  bool hasConfirmationRequested() => _confirmationRequested != null;

  // "recipient_refs" field.
  List<DocumentReference>? _recipientRefs;
  List<DocumentReference> get recipientRefs => _recipientRefs ?? const [];
  bool hasRecipientRefs() => _recipientRefs != null;

  // "recipient_count" field.
  int? _recipientCount;
  int get recipientCount => _recipientCount ?? 0;
  bool hasRecipientCount() => _recipientCount != null;

  // "read_count" field.
  int? _readCount;
  int get readCount => _readCount ?? 0;
  bool hasReadCount() => _readCount != null;

  // "confirmation_count" field.
  int? _confirmationCount;
  int get confirmationCount => _confirmationCount ?? 0;
  bool hasConfirmationCount() => _confirmationCount != null;

  // "confirmed_by" field.
  List<String>? _confirmedBy;
  List<String> get confirmedBy => _confirmedBy ?? const [];
  bool hasConfirmedBy() => _confirmedBy != null;

  void _initializeFields() {
    _publicText = snapshotData['public_text'] as String?;
    _internalText = snapshotData['internal_text'] as String?;
    _senderId = snapshotData['sender_id'] as String?;
    _senderName = snapshotData['sender_name'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _isInternalOnly = snapshotData['is_internal_only'] as bool?;
    _groupIds = getDataList(snapshotData['group_ids']);
    _groupNames = getDataList(snapshotData['group_names']);
    _senderInitial = snapshotData['sender_initial'] as String?;
    _senderRole = snapshotData['sender_role'] as String?;
    _senderColor = snapshotData['sender_color'] as String?;
    _groupId = snapshotData['group_id'] as String?;
    _groupName = snapshotData['group_name'] as String?;
    _confirmationRequested = snapshotData['confirmation_requested'] as bool?;
    _recipientRefs = getDataList(snapshotData['recipient_refs']);
    _recipientCount = castToType<int>(snapshotData['recipient_count']);
    _readCount = castToType<int>(snapshotData['read_count']);
    _confirmationCount = castToType<int>(snapshotData['confirmation_count']);
    _confirmedBy = getDataList(snapshotData['confirmed_by']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('messages');

  static Stream<MessagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MessagesRecord.fromSnapshot(s));

  static Future<MessagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MessagesRecord.fromSnapshot(s));

  static MessagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MessagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MessagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MessagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MessagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MessagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMessagesRecordData({
  String? publicText,
  String? internalText,
  String? senderId,
  String? senderName,
  DateTime? createdTime,
  bool? isInternalOnly,
  String? senderInitial,
  String? senderRole,
  String? senderColor,
  String? groupId,
  String? groupName,
  bool? confirmationRequested,
  int? recipientCount,
  int? readCount,
  int? confirmationCount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'public_text': publicText,
      'internal_text': internalText,
      'sender_id': senderId,
      'sender_name': senderName,
      'created_time': createdTime,
      'is_internal_only': isInternalOnly,
      'sender_initial': senderInitial,
      'sender_role': senderRole,
      'sender_color': senderColor,
      'group_id': groupId,
      'group_name': groupName,
      'confirmation_requested': confirmationRequested,
      'recipient_count': recipientCount,
      'read_count': readCount,
      'confirmation_count': confirmationCount,
    }.withoutNulls,
  );

  return firestoreData;
}

class MessagesRecordDocumentEquality implements Equality<MessagesRecord> {
  const MessagesRecordDocumentEquality();

  @override
  bool equals(MessagesRecord? e1, MessagesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.publicText == e2?.publicText &&
        e1?.internalText == e2?.internalText &&
        e1?.senderId == e2?.senderId &&
        e1?.senderName == e2?.senderName &&
        e1?.createdTime == e2?.createdTime &&
        e1?.isInternalOnly == e2?.isInternalOnly &&
        listEquality.equals(e1?.groupIds, e2?.groupIds) &&
        listEquality.equals(e1?.groupNames, e2?.groupNames) &&
        e1?.senderInitial == e2?.senderInitial &&
        e1?.senderRole == e2?.senderRole &&
        e1?.senderColor == e2?.senderColor &&
        e1?.groupId == e2?.groupId &&
        e1?.groupName == e2?.groupName &&
        e1?.confirmationRequested == e2?.confirmationRequested &&
        listEquality.equals(e1?.recipientRefs, e2?.recipientRefs) &&
        e1?.recipientCount == e2?.recipientCount &&
        e1?.readCount == e2?.readCount &&
        e1?.confirmationCount == e2?.confirmationCount &&
        listEquality.equals(e1?.confirmedBy, e2?.confirmedBy);
  }

  @override
  int hash(MessagesRecord? e) => const ListEquality().hash([
        e?.publicText,
        e?.internalText,
        e?.senderId,
        e?.senderName,
        e?.createdTime,
        e?.isInternalOnly,
        e?.groupIds,
        e?.groupNames,
        e?.senderInitial,
        e?.senderRole,
        e?.senderColor,
        e?.groupId,
        e?.groupName,
        e?.confirmationRequested,
        e?.recipientRefs,
        e?.recipientCount,
        e?.readCount,
        e?.confirmationCount,
        e?.confirmedBy
      ]);

  @override
  bool isValidKey(Object? o) => o is MessagesRecord;
}
