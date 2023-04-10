class Song {
    int id;
    String name;
    String artist;
    String releaseDate;
    List<String> genre;
    String about;
    List<String> imageURL;
    String spotifyLink;
    bool isFavorite;


    Song({
        required this.id,
        required this.name,
        required this.artist,
        required this.releaseDate,
        required this.genre,
        required this.about,
        required this.imageURL,
        required this.spotifyLink,
        this.isFavorite = false,
    });
}

List<Song> songList = [
    Song(
        id:1,
        name: 'Drivers License',
        artist: 'Olivia Rodrigo',
        releaseDate: '2021-01-08',
        genre: ['Pop', 'Alternative'],
        about: 'A breakout hit by Olivia Rodrigo, exploring the feelings of heartbreak and betrayal after a breakup',
        spotifyLink: 'https://youtu.be/ZmDBbnmKpqQ',
        imageURL: ['https://i.scdn.co/image/ab67616d0000b273a91c10fe9472d9bd89802e5a']
    ),
    Song(
        id: 2,
        name: 'Good 4 U',
        artist: 'Olivia Rodrigo',
        releaseDate: '2021-05-14',
        genre: ['Pop', 'Alternative'],
        about: 'Another breakout hit by Olivia Rodrigo, this time with a more upbeat tone about moving on from a toxic relationship',
        spotifyLink: 'https://youtu.be/gNi_6U5Pm_o',
        imageURL: ['https://i.scdn.co/image/ab67616d0000b273a91c10fe9472d9bd89802e5a']
    ),
    Song(
        id: 3,
        name: 'Levitating',
        artist: 'Dua Lipa(feat. DaBaby)',
        releaseDate: '2020-10-01',
        genre: ['Pop', 'Disco'],
        about: 'A disco-pop track by Dua Lipa, with catchy beats and an infectious chorus',
        spotifyLink: 'https://youtu.be/TUVcZfQe-Kw',
        imageURL: ['https://i.scdn.co/image/ab67616d0000b27349caa4fc6f962057ba65576a']
    ),
    Song(
        id: 4,
        name: 'Montero (Call Me By Your Name)',
        artist: 'Lil Nas X',
        releaseDate: '2021-03-26',
        genre: ['Pop', 'Hip Hop'],
        about: 'A provocative and controversial track by Lil Nas X, featuring a catchy beat and a catchy chorus',
        spotifyLink: 'https://youtu.be/6swmTBVI83k',
        imageURL: ['https://upload.wikimedia.org/wikipedia/en/b/bf/Lil_Nas_X_-_Montero.png']
    ),
    Song(
        id: 5,
        name: 'Peaches',
        artist: 'Justin Bieber(feat. Daniel Caesar, Giveon)',
        releaseDate: '2021-03-19',
        genre: ['Pop', 'R&B'],
        about: 'A collaborative track by Justin Bieber, featuring Daniel Caesar and Giveon, with a smooth R&B vibe',
        spotifyLink: 'https://youtu.be/tQ0yjYUFKAE',
        imageURL: ['https://i.scdn.co/image/ab67616d0000b273e6f407c7f3a0ec98845e4431']
    ),
    Song(
        id: 6,
        name: 'Blinding Lights',
        artist: 'The Weekend',
        releaseDate: '2019-11-29',
        genre: ['Pop', 'Synth-pop'],
        about: 'A synth-pop hit by The Weeknd, with a nostalgic and retro vibe',
        spotifyLink: 'https://youtu.be/4NRXx6U8ABQ',
        imageURL: ['https://upload.wikimedia.org/wikipedia/en/e/e6/The_Weeknd_-_Blinding_Lights.png']
    ),
    Song(
        id: 7,
        name: 'Dynamite',
        artist: 'BTS',
        releaseDate: '2020-08-21',
        genre: ['Pop', 'Disco'],
        about: 'A disco-pop track by BTS, with cheerful and uplifting lyrics about spreading positivity and energy',
        spotifyLink: 'https://youtu.be/gdZLi9oWNZg',
        imageURL: ['https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Bts_Dynamite_album.svg/800px-Bts_Dynamite_album.svg.png']
    ),
    Song(
        id: 8,
        name: 'Butter',
        artist: 'BTS',
        releaseDate: '2021-05-21',
        genre: ['Pop', 'R&B'],
        about: 'A smooth R&B-pop track by BTS, with catchy hooks and lyrics about sweet and addictive love',
        spotifyLink: 'https://youtu.be/WMweEpGlu_U',
        imageURL: ['https://upload.wikimedia.org/wikipedia/en/d/db/BTS_-_Butter.png']
    ),
    Song(
        id: 9,
        name: 'Boy With Luv',
        artist: 'BTS',
        releaseDate: '2019-04-12',
        genre: ['Pop', 'Dance-pop'],
        about: 'A dance-pop track by BTS, featuring Halsey, with lyrics about the joy and excitement of love',
        spotifyLink: 'https://youtu.be/XsX3ATc3FbA',
        imageURL: ['https://i.scdn.co/image/ab67616d0000b27318d0ed4f969b376893f9a38f']
    ),
    Song(
        id: 10,
        name: 'Blood Sweat & Tears',
        artist: 'BTS',
        releaseDate: '2016-10-10',
        genre: ['Pop', 'Electropop'],
        about: 'An electropop hit by BTS, with lyrics that metaphorically depict the struggles of temptation and desire',
        spotifyLink: 'https://youtu.be/hmE9f-TEutc',
        imageURL: ['https://upload.wikimedia.org/wikipedia/en/3/3f/BTS%2C_Wings.jpg']
    ),
    Song(
        id: 11,
        name: 'Spring Day',
        artist: 'BTS',
        releaseDate: '2017-02-13',
        genre: ['Pop', 'Alternative'],
        about: 'An alternative-pop ballad by BTS, with lyrics about the longing and sadness of missing someone',
        spotifyLink: 'https://youtu.be/xEeFrLSkMm8',
        imageURL: ['https://upload.wikimedia.org/wikipedia/vi/e/e4/YNWA_BTS_album.jpg']
    ),
    Song(
        id: 12,
        name: 'Life Goes On',
        artist: 'BTS',
        releaseDate: '2020-11-20',
        genre: ['Kpop','Acoustic pop'],
        about: 'Life Goes On is a heartfelt acoustic pop song with a message of hope and resilience.',
        spotifyLink: 'https://youtu.be/-5q5mZbe3V8',
        imageURL: ['https://upload.wikimedia.org/wikipedia/en/a/a2/BTS_-_Be_Cover.png',]
    )
];