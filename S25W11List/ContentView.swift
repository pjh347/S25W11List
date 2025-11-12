
import SwiftUI

struct ContentView: View {
    var body: some View {
        MyList()
    }
}

struct MyList: View {
    @State var viewModel = SongViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.songs, id: \.id) { song in
                VStack {
                    Text(song.title)
                        .font(.headline)
                        .foregroundColor(.blue)
                        .padding()
                    Text(song.singer)
                        .font(.caption)
                        .foregroundColor(.gray)
                        .padding()
                }
            }
        }
        .onAppear {
            viewModel.add(song: Song(id: 1, title: "Golden", singer: "HUNTER/X"))
            viewModel.add(song: Song(id: 2, title: "Drowing", singer: "WOODZ"))
            viewModel.add(song: Song(id: 3, title: "Soda Pop", singer: "Saja Boys"))
        }
    }
}

#Preview {
    ContentView()
}
