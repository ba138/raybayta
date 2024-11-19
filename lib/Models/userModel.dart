class UserModel {
  final String? id;
  final String? name;
  final String? email;
  final String? profileImage;
  final String? phoneNumber;
  final String? about;
  final DateTime? createdAt;
  final DateTime? lastOnlineStatus;
  final String? status;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.profileImage,
    this.phoneNumber,
    this.about,
    this.createdAt,
    this.lastOnlineStatus,
    this.status,
  });

  // Convert UserModel to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'profileImage': profileImage,
      'phoneNumber': phoneNumber,
      'about': about,
      'createdAt': createdAt?.toIso8601String(),
      'lastOnlineStatus': lastOnlineStatus?.toIso8601String(),
      'status': status,
    };
  }

  // Create UserModel from JSON
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      profileImage: json['profileImage'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      about: json['about'] as String?,
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      lastOnlineStatus: json['lastOnlineStatus'] != null
          ? DateTime.parse(json['lastOnlineStatus'])
          : null,
      status: json['status'] as String?,
    );
  }
}
