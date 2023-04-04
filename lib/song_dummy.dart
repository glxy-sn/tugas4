class Song {
    String name;
    String artist;
    String releaseDate;
    List<String> genre;
    String about;
    String imageURL;
    String spotifyLink;

    Song({
        required this.name,
        required this.artist,
        required this.releaseDate,
        required this.genre,
        required this.about,
        required this.imageURL,
        required this.spotifyLink,
    });
}

var songList = [
    Song(
        name: 'Drivers License',
        artist: 'Olivia Rodrigo',
        releaseDate: '2021-01-08',
        genre: ['Pop', 'Alternative'],
        about: 'A breakout hit by Olivia Rodrigo, exploring the feelings of heartbreak and betrayal after a breakup',
        spotifyLink: 'https://open.spotify.com/track/7lPN2DXiMsVn7XUKtOW1CS',
        imageURL: 'https://i.scdn.co/image/ab67616d0000b273a91c10fe9472d9bd89802e5a',
    ),
    Song(
        name: 'Good 4 U',
        artist: 'Olivia Rodrigo',
        releaseDate: '2021-05-14',
        genre: ['Pop', 'Alternative'],
        about: 'Another breakout hit by Olivia Rodrigo, this time with a more upbeat tone about moving on from a toxic relationship',
        spotifyLink: 'https://open.spotify.com/track/4ZtFanR9U6ndgddUvNcjcG',
        imageURL: 'https://i.scdn.co/image/ab67616d0000b273a91c10fe9472d9bd89802e5a'
    ),
    Song(
        name: 'Levitating',
        artist: 'Dua Lipa(feat. DaBaby)',
        releaseDate: '2020-10-01',
        genre: ['Pop', 'Disco'],
        about: 'A disco-pop track by Dua Lipa, with catchy beats and an infectious chorus',
        spotifyLink: 'https://open.spotify.com/track/5nujrmhLynf4yMoMtj8AQF',
        imageURL: 'https://i.scdn.co/image/ab67616d0000b27349caa4fc6f962057ba65576a'
    ),
    Song(
        name: 'Montero (Call Me By Your Name)',
        artist: 'Lil Nas X',
        releaseDate: '2021-03-26',
        genre: ['Pop', 'Hip Hop'],
        about: 'A provocative and controversial track by Lil Nas X, featuring a catchy beat and a catchy chorus',
        spotifyLink: 'https://open.spotify.com/track/67BtfxlNbhBmCDR2L2l8qd',
        imageURL: 'https://upload.wikimedia.org/wikipedia/en/b/bf/Lil_Nas_X_-_Montero.png'
    ),
    Song(
        name: 'Peaches',
        artist: 'Justin Bieber(feat. Daniel Caesar, Giveon)',
        releaseDate: '2021-03-19',
        genre: ['Pop', 'R&B'],
        about: 'A collaborative track by Justin Bieber, featuring Daniel Caesar and Giveon, with a smooth R&B vibe',
        spotifyLink: 'https://open.spotify.com/track/4iJyoBOLtHqaGxP12qzhQI',
        imageURL: 'https://i.scdn.co/image/ab67616d0000b273e6f407c7f3a0ec98845e4431'
    ),
    Song(
        name: 'Blinding Lights',
        artist: 'The Weekend',
        releaseDate: '2019-11-29',
        genre: ['Pop', 'Synth-pop'],
        about: 'A synth-pop hit by The Weeknd, with a nostalgic and retro vibe',
        spotifyLink: 'https://open.spotify.com/track/0VjIjW4GlUZAMYd2vXMi3b',
        imageURL: 'https://upload.wikimedia.org/wikipedia/en/e/e6/The_Weeknd_-_Blinding_Lights.png'
    ),
    Song(
        name: 'Dynamite',
        artist: 'BTS',
        releaseDate: '2020-08-21',
        genre: ['Pop', 'Disco'],
        about: 'A disco-pop track by BTS, with cheerful and uplifting lyrics about spreading positivity and energy',
        spotifyLink: 'https://open.spotify.com/track/0t1kP63rueHleOhQkYSXFY',
        imageURL: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Bts_Dynamite_album.svg/800px-Bts_Dynamite_album.svg.png'
    ),
    Song(
        name: 'Butter',
        artist: 'BTS',
        releaseDate: '2021-05-21',
        genre: ['Pop', 'R&B'],
        about: 'A smooth R&B-pop track by BTS, with catchy hooks and lyrics about sweet and addictive love',
        spotifyLink: 'https://open.spotify.com/track/2bgTY4UwhfBYhGT4HUYZTq',
        imageURL: 'https://upload.wikimedia.org/wikipedia/en/d/db/BTS_-_Butter.png'
    ),
    Song(
        name: 'Boy With Luv',
        artist: 'BTS',
        releaseDate: '2019-04-12',
        genre: ['Pop', 'Dance-pop'],
        about: 'A dance-pop track by BTS, featuring Halsey, with lyrics about the joy and excitement of love',
        spotifyLink: 'https://open.spotify.com/track/2qT1uLXPVPzGgFOx4jtEuo',
        imageURL: 'https://i.scdn.co/image/ab67616d0000b27318d0ed4f969b376893f9a38f'
    ),
    Song(
        name: 'Blood Sweat & Tears',
        artist: 'BTS',
        releaseDate: '2016-10-10',
        genre: ['Pop', 'Electropop'],
        about: 'An electropop hit by BTS, with lyrics that metaphorically depict the struggles of temptation and desire',
        spotifyLink: 'https://open.spotify.com/track/2QzCIOuHbFwXR1G1mueRp5',
        imageURL: 'https://upload.wikimedia.org/wikipedia/en/3/3f/BTS%2C_Wings.jpg'
    ),
    Song(
        name: 'Spring Day',
        artist: 'BTS',
        releaseDate: '2017-02-13',
        genre: ['Pop', 'Alternative'],
        about: 'An alternative-pop ballad by BTS, with lyrics about the longing and sadness of missing someone',
        spotifyLink: 'https://open.spotify.com/track/0GONea6G2XdnHWjNZd6zt3',
        imageURL: 'https://upload.wikimedia.org/wikipedia/vi/e/e4/YNWA_BTS_album.jpg'
    ),
    Song(
        name: 'Life Goes On',
        artist: 'BTS',
        releaseDate: '2020-11-20',
        genre: ['Kpop','Acoustic pop'],
        about: 'Life Goes On is a heartfelt acoustic pop song with a message of hope and resilience.',
        spotifyLink: 'https://open.spotify.com/track/5KawlOMHjWeUjQtnuRs22c',
        imageURL: 'https://upload.wikimedia.org/wikipedia/en/a/a2/BTS_-_Be_Cover.png',
    )
];