import Foundation

@Observable
class SongViewModel {
    private var _songs: [Song] = []
    
    var songs: [Song] {
        return _songs
    }
    
    func add(song: Song) {
        _songs.append(song)
    }
}
