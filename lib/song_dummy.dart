class Song {
    String name;
    String releaseDate;
    List<String> genre;
    String about;
    String imageURL;
    String spotifyLink;

    Song({
        required this.name,
        required this.releaseDate,
        required this.genre,
        required this.about,
        required this.imageURL,
        required this.spotifyLink,
    });
}

var songRecommendation = [
    Song(
        name: 'Drivers License',
        releaseDate: '2021-01-08',
        genre: ['Pop', 'Alternative'],
        about: 'A breakout hit by Olivia Rodrigo, exploring the feelings of heartbreak and betrayal after a breakup',
        spotifyLink: 'https://open.spotify.com/track/7lPN2DXiMsVn7XUKtOW1CS',
        imageURL: 'https://i.scdn.co/image/ab67616d00001e02547b04ec69c72f78e8d7cb13',
    ),
    Song(
        name: 'Good 4 U',
        releaseDate: '2021-05-14',
        genre: ['Pop', 'Alternative'],
        about: 'Another breakout hit by Olivia Rodrigo, this time with a more upbeat tone about moving on from a toxic relationship',
        spotifyLink: 'https://open.spotify.com/track/4ZtFanR9U6ndgddUvNcjcG',
        imageURL: 'https://i.scdn.co/image/ab67616d00001e026f0128b0abfa7bb60291a94c'
    ),
    Song(
        name: 'Levitating',
        releaseDate: '2020-10-01',
        genre: ['Pop', 'Disco'],
        about: 'A disco-pop track by Dua Lipa, with catchy beats and an infectious chorus',
        spotifyLink: 'https://open.spotify.com/track/5nujrmhLynf4yMoMtj8AQF',
        imageURL: 'https://i.scdn.co/image/ab67616d00001e023de5b6ee5c5f5a5c5e21d880'
    ),
    Song(
        name: 'Montero (Call Me By Your Name)',
        releaseDate: '2021-03-26',
        genre: ['Pop', 'Hip Hop'],
        about: 'A provocative and controversial track by Lil Nas X, featuring a catchy beat and a catchy chorus',
        spotifyLink: 'https://open.spotify.com/track/67BtfxlNbhBmCDR2L2l8qd',
        imageURL: 'https://i.scdn.co/image/ab67616d00001e021bcf69ed6a505c6d1804926c'
    ),
    Song(
        name: 'Peaches',
        releaseDate: '2021-03-19',
        genre: ['Pop', 'R&B'],
        about: 'A collaborative track by Justin Bieber, featuring Daniel Caesar and Giveon, with a smooth R&B vibe',
        spotifyLink: 'https://open.spotify.com/track/4iJyoBOLtHqaGxP12qzhQI',
        imageURL: 'https://i.scdn.co/image/ab67616d00001e02a5c5d5ebd7ccbc06a9a15214'
    ),
    Song(
        name: 'Blinding Lights',
        releaseDate: '2019-11-29',
        genre: ['Pop', 'Synth-pop'],
        about: 'A synth-pop hit by The Weeknd, with a nostalgic and retro vibe',
        spotifyLink: 'https://open.spotify.com/track/0VjIjW4GlUZAMYd2vXMi3b',
        imageURL: 'https://i.scdn.co/image/ab67616d00001e026d3f97e4087cdd0ca9c42f3f'
    ),
    Song(
        name: 'Dynamite',
        releaseDate: '2020-08-21',
        genre: ['Pop', 'Disco'],
        about: 'A disco-pop track by BTS, with cheerful and uplifting lyrics about spreading positivity and energy',
        spotifyLink: 'https://open.spotify.com/track/0t1kP63rueHleOhQkYSXFY',
        imageURL: 'https://i.scdn.co/image/ab67616d00001e021c0209b6f1a7c01b6f69436e'
    ),
    Song(
        name: 'Butter',
        releaseDate: '2021-05-21',
        genre: ['Pop', 'R&B'],
        about: 'A smooth R&B-pop track by BTS, with catchy hooks and lyrics about sweet and addictive love',
        spotifyLink: 'https://open.spotify.com/track/2bgTY4UwhfBYhGT4HUYZTq',
        imageURL: 'https://i.scdn.co/image/ab67616d00001e021b60c3b15668a059f8b1b2f5'
    ),
    Song(
        name: 'Boy With Luv',
        releaseDate: '2019-04-12',
        genre: ['Pop', 'Dance-pop'],
        about: 'A dance-pop track by BTS, featuring Halsey, with lyrics about the joy and excitement of love',
        spotifyLink: 'https://open.spotify.com/track/2qT1uLXPVPzGgFOx4jtEuo',
        imageURL: 'https://i.scdn.co/image/ab67616d00001e02676b19a684b2f10cc18f6281'
    ),
    Song(
        name: 'Blood Sweat & Tears',
        releaseDate: '2016-10-10',
        genre: ['Pop', 'Electropop'],
        about: 'An electropop hit by BTS, with lyrics that metaphorically depict the struggles of temptation and desire',
        spotifyLink: 'https://open.spotify.com/track/2QzCIOuHbFwXR1G1mueRp5',
        imageURL: 'https://i.scdn.co/image/ab67616d00001e02753a388fc91a963fc2b2c9fe'
    ),
    Song(
        name: 'Spring Day',
        releaseDate: '2017-02-13',
        genre: ['Pop', 'Alternative'],
        about: 'An alternative-pop ballad by BTS, with lyrics about the longing and sadness of missing someone',
        spotifyLink: 'https://open.spotify.com/track/0GONea6G2XdnHWjNZd6zt3',
        imageURL: 'https://i.scdn.co/image/ab67616d00001e0235e52a5ce5b5bb378b51c9ea'
    )
];