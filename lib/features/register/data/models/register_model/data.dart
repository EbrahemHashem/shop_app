import 'package:equatable/equatable.dart';

class Data extends Equatable {
	final String? email;
	final String? phone;
	final String? name;
	final int? id;
	final String? image;
	final String? token;

	const Data({
		this.email, 
		this.phone, 
		this.name, 
		this.id, 
		this.image, 
		this.token, 
	});

	factory Data.fromJson(Map<String, dynamic> json) => Data(
				email: json['email'] as String?,
				phone: json['phone'] as String?,
				name: json['name'] as String?,
				id: json['id'] as int?,
				image: json['image'] as String?,
				token: json['token'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'email': email,
				'phone': phone,
				'name': name,
				'id': id,
				'image': image,
				'token': token,
			};

	@override
	List<Object?> get props => [email, phone, name, id, image, token];
}
