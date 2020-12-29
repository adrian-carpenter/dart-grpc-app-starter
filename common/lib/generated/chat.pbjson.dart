///
//  Generated code. Do not modify.
//  source: chat.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const Channel$json = const {
  '1': 'Channel',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'users', '3': 2, '4': 3, '5': 11, '6': '.user.User', '10': 'users'},
    const {'1': 'time_created', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timeCreated'},
    const {'1': 'messages', '3': 4, '4': 3, '5': 11, '6': '.chat.Message', '10': 'messages'},
    const {'1': 'org_id', '3': 5, '4': 1, '5': 5, '10': 'orgId'},
  ],
};

const Message$json = const {
  '1': 'Message',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 5, '10': 'userId'},
    const {'1': 'content', '3': 3, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'time_created', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timeCreated'},
    const {'1': 'edited', '3': 5, '4': 1, '5': 8, '10': 'edited'},
    const {'1': 'deleted', '3': 6, '4': 1, '5': 8, '10': 'deleted'},
    const {'1': 'read_by', '3': 7, '4': 3, '5': 5, '10': 'readBy'},
  ],
};

