CREATE TABLE Artists (
    artist_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE Albums (
    album_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);


CREATE TABLE Songs (
    song_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    album_id INT NOT NULL,
    track_number INT NOT NULL,
    duration_seconds INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Albums(album_id)
);

