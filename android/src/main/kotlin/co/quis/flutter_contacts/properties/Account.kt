package co.quis.flutter_contacts.properties

data class Account(
    var rawId: String,
    var type: String,
    var name: String,
    var sync1: String?,
    var sync2: String?,
    var sync3: String?,
    var sync4: String?,
    var mimetypes: List<String> = listOf<String>()
) {

    companion object {
        fun fromMap(m: Map<String, Any?>): Account = Account(
            m["rawId"] as String,
            m["type"] as String,
            m["name"] as String,
            m["sync1"] as String?,
            m["sync2"] as String?,
            m["sync3"] as String?,
            m["sync4"] as String?,
            m["mimetypes"] as List<String>
        )
    }

    fun toMap(): Map<String, Any?> = mapOf(
        "rawId" to rawId,
        "type" to type,
        "name" to name,
        "sync1" to sync1,
        "sync2" to sync2,
        "sync3" to sync3,
        "sync4" to sync4,
        "mimetypes" to mimetypes
    )
}
