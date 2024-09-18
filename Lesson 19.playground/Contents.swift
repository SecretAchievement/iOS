import UIKit

var greeting = "Hello, playground"

class Media {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: Media {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}
class Music: Media {
    var artist: String
        init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

class NewClass {
    
}

let mediaArray: [Any] = [Movie.init(name: "Casablanka", director: "Michael"),
                           Music.init(name: "Blue Shoes", artist: "Elvis Preslaey"),
                           Movie.init(name: "Kane", director: "Citizen"),
                           Music.init(name: "The Only", artist: "Chesney"),
                           Movie.init(name: "Never gonna", director: "Rick Astley"),
                           NewClass(), 5]
//Checking types
var count = (musicCount: 0, filmCount: 0)
for obj in mediaArray {
    if obj is Movie {
        count.filmCount += 1
    } else if obj is Music {
        count.musicCount += 1
    }
}
print("In your player placed \(count.filmCount) - movies and \(count.musicCount) songs")

// Понижающее приведение
for value in mediaArray {
    if let musics = value as? Music {
        print("Song \(musics.name) by \(musics.artist)")
    } else if let movies = value as? Movie {
        print(("Movies \(movies.name) by \(movies.director)"))
    }
}
//HOMEWORK

//3)Я как заказчик даю вам разработчику задания сделать :
//a) Библиотеку книг и видео библиотеку фильмов

//class Library {
//        var name: String
//        var genre: String
//        var object: [String]
//    init(name: String, genre: String, object: [String]) {
//        self.name = name
//        self.genre = genre
//        self.object = object
//    }
//    func addNewObject (newObject: String) {
//        object.append(newObject)
//        object.sorted()
//    }
//}
//class Books: Library {
//}
//class Movies: Library {
//}

//myBooks.object = []
//myBooks.addNewObject(newObject: "Book")

struct Cinema {
    var name: String
    var type: String
    var genre: String
    }

class Films {
    var cinema = [Cinema]()
    func addVideo(name: String, type: String, genre: String) {
        cinema.append(Cinema(name: name, type: type, genre: genre))
        let newArray = cinema
            .sorted {$0.name < $1.name}
            .map{$0.name}
        print(newArray)
    }
    func sortByMood(genreFilms: String) {
        let filmsArray = cinema.filter {$0.genre == genreFilms}
        for i in filmsArray {
            print(i.name, i.type, i.genre)
        }
    }
}

var video = Films()
video.addVideo(name: "Lost", type: "Serial", genre: "Drama")
video.addVideo(name: "Breaking Bad", type: "Serial", genre: "Crime")
video.addVideo(name: "Friends", type: "Serial", genre: "Comedy")
video.addVideo(name: "Inception", type: "Movie", genre: "Sci-Fi")
video.addVideo(name: "The Office", type: "Serial", genre: "Comedy")
video.addVideo(name: "Titanic", type: "Movie", genre: "Romance")
video.addVideo(name: "Sherlock", type: "Serial", genre: "Mystery")
video.addVideo(name: "Interstellar", type: "Movie", genre: "Sci-Fi")
video.addVideo(name: "The Dark Knight", type: "Movie", genre: "Action")
video.addVideo(name: "Pulp Fiction", type: "Movie", genre: "Crime")
video.addVideo(name: "The Simpsons", type: "Serial", genre: "Animation")
video.addVideo(name: "Avatar", type: "Movie", genre: "Fantasy")
video.addVideo(name: "The Matrix", type: "Movie", genre: "Sci-Fi")
video.addVideo(name: "How I Met Your Mother", type: "Serial", genre: "Comedy")
video.addVideo(name: "Black Mirror", type: "Serial", genre: "Sci-Fi")
video.addVideo(name: "The Godfather", type: "Movie", genre: "Crime")
video.addVideo(name: "Stranger Things", type: "Serial", genre: "Horror")
video.addVideo(name: "The Lion King", type: "Movie", genre: "Animation")
video.addVideo(name: "Narcos", type: "Serial", genre: "Crime")
video.addVideo(name: "Gladiator", type: "Movie", genre: "Action")
video.addVideo(name: "Chernobyl", type: "Serial", genre: "Drama")

video.sortByMood(genreFilms: "Drama")
video.sortByMood(genreFilms: "Crime")

//class Films {
//    var cinema = [Cinema]()
//    func addVideo(name: String, type: String, genre: String) {
//        cinema.append(Cinema(name: name, type: type, genre: genre))
//        let newArray = cinema
//            .sorted {$0.name < $1.name}
//            .map{$0.name}
//        print(newArray)
//    }
//    func sortByMood(genreFilms: String) {
//        let filmsArray = cinema.filter {$0.genre == genreFilms}
//        for i in filmsArray {
//            print(i.name, i.type, i.genre)
//        }
//    }
//}

struct MusicBand {
    var name: String
    var genre: String
    var vocalsName: String
}
class Playlist {
    var band = [MusicBand]()
    func addBand(name: String, genre: String, vocalsName: String) {
        band.append(MusicBand(name: name, genre: genre, vocalsName: vocalsName))
        let newArray = band
            .sorted {$0.name < $1.name}
            .map{$0.name}
        print(newArray)
    }
    func sortByMood(genreBands: String) {
        let bandsArray = band.filter {$0.genre == genreBands}
        for i in bandsArray {
            print(i.name, i.genre)
        }
    }
}

var bands = Playlist()
bands.addBand(name: "Muse", genre: "Rock", vocalsName: "Bellamy")
bands.addBand(name: "Radiohead", genre: "Alternative", vocalsName: "Yorke")
bands.addBand(name: "Nirvana", genre: "Grunge", vocalsName: "Cobain")
bands.addBand(name: "Coldplay", genre: "Alternative", vocalsName: "Martin")
bands.addBand(name: "The Beatles", genre: "Rock", vocalsName: "Lennon")
bands.addBand(name: "Queen", genre: "Rock", vocalsName: "Mercury")
bands.addBand(name: "U2", genre: "Rock", vocalsName: "Bono")
bands.addBand(name: "Pink Floyd", genre: "Progressive Rock", vocalsName: "Waters")
bands.addBand(name: "Led Zeppelin", genre: "Rock", vocalsName: "Plant")
bands.addBand(name: "Metallica", genre: "Metal", vocalsName: "Hetfield")
bands.addBand(name: "The Rolling Stones", genre: "Rock", vocalsName: "Jagger")

bands.sortByMood(genreBands: "Rock")
