DROP TABLE IF EXISTS places_types;
CREATE TABLE places_type (
	id SERIAL,
	name VARCHAR(255)
);

DROP TABLE IF EXISTS places;
CREATE TABLE places (
	id SERIAL,
	user_id BIGINT UNSIGNED NOT NULL,
	visited_at DATETIME,
	place_type BIGINT UNSIGNED NOT NULL,
	
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (place_type) REFERENCES places_type(id)
);

DROP TABLE IF EXISTS photos;
CREATE TABLE photos (
	id SERIAL,
	photoname VARCHAR(255),
	created_at DATETIME DEFAULT NOW(),
	updated_at DATETIME ON UPDATE NOW(),
	user_id BIGINT UNSIGNED NOT NULL,
	
	FOREIGN KEY (user_id) REFERENCES users(id)
);

DROP TABLE IF EXISTS hobbies;
CREATE TABLE hobbies (
	id SERIAL,
	user_id BIGINT UNSIGNED NOT NULL,
	hobby_name VARCHAR(255),
	
	FOREIGN KEY (user_id) REFERENCES users(id)
);
