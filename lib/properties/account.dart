/// Account information, which is exposed for information and debugging purposes
/// and should be ignored in most cases.
///
/// On Android this is the raw account, and there can be several accounts per
/// unified contact (for example one for Gmail, one for Skype and one for
/// WhatsApp). On iOS it is called container, and there can be only one
/// container per contact.
class Account {
  /// Raw account ID.
  String rawId;

  /// Account type, e.g. com.google or com.facebook.messenger.
  String type;

  /// Account name, e.g. john.doe@gmail.com.
  String name;

  /// Custom sync identifier 1
  String? sync1;

  /// Custom sync identifier 2
  String? sync2;

  /// Custom sync identifier 3
  String? sync3;

  /// Custom sync identifier 4
  String? sync4;

  /// Android mimetypes provided by this account.
  List<String> mimetypes;

  Account(
    this.rawId,
    this.type,
    this.name,
    this.sync1,
    this.sync2,
    this.sync3,
    this.sync4,
    this.mimetypes,
  );

  factory Account.fromJson(Map<String, dynamic> json) => Account(
        (json['rawId'] as String?) ?? '',
        (json['type'] as String?) ?? '',
        (json['name'] as String?) ?? '',
        (json['sync1'] as String?),
        (json['sync2'] as String?),
        (json['sync3'] as String?),
        (json['sync4'] as String?),
        (json['mimetypes'] as List?)?.map((e) => e as String).toList() ?? [],
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'rawId': rawId,
        'type': type,
        'name': name,
        'sync1': sync1,
        'sync2': sync2,
        'sync3': sync3,
        'sync4': sync4,
        'mimetypes': mimetypes,
      };

  @override
  String toString() =>
      'Account(rawId=$rawId, type=$type, name=$name, mimetypes=$mimetypes, sync1=$sync1, sync2=$sync2, sync3=$sync3, sync4=$sync4)';
}
