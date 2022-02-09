//
//  ContentView.swift
//  SpotifyClone
//
//  Created by Robert on 07/02/2022.
//

import SwiftUI

let backgroundColor : [Color] = [Color(#colorLiteral(red: 0.6562543511, green: 0.3964034021, blue: 0.2654695213, alpha: 1)), Color(#colorLiteral(red: 0.4624739289, green: 0.2865385115, blue: 0.1997108757, alpha: 1)), Color(#colorLiteral(red: 0.2805191278, green: 0.1845229864, blue: 0.1371770501, alpha: 1)), Color(#colorLiteral(red: 0.102357842, green: 0.08627707511, blue: 0.08198034018, alpha: 1)), Color(#colorLiteral(red: 0.07058823854, green: 0.07058823854, blue: 0.07058823854, alpha: 1)), Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))]

let secondaryTextColor = Color(red: 0.773, green: 0.753, blue: 0.745)

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: backgroundColor), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                VStack {
                    ScrollView{
                    Cover()
                    PlaylistInfo()
                    ControlButton()
                    VStack(spacing: 15) {
                        Group {
                            Track(isPlaying: true, number: 1, trackCover: "Encanto", name: "We Don't Talk About Bruno", artist: "Carolina Gaitan - La Gaita, Mauro Castiloa", explicit: false, increase: false, decrease: false)
                            
                            Track(isPlaying: false, number: 2, trackCover: "Overseas", name: "Overseas", artist: "D-Block Europe, Central Cee", explicit: true, increase: true, decrease: false)
                            
                            Track(isPlaying: false, number: 3, trackCover: "abcdefu", name: "abcdefu", artist: "GAYLE", explicit: true, increase: false, decrease: false)
                            
                            Track(isPlaying: false, number: 4, trackCover: "Encanto", name: "We Don't Talk About Bruno", artist: "Carolina Gaitan - La Gaita, Mauro Castilo", explicit: false, increase: false, decrease: false)
                            
                            Track(isPlaying: false, number: 5, trackCover: "Encanto", name: "We Don't Talk About Bruno", artist: "Carolina Gaitan - La Gaita, Mauro Castiloa", explicit: false, increase: false, decrease: false)
                            
                            Track(isPlaying: false, number: 6, trackCover: "Overseas", name: "Overseas", artist: "D-Block Europe, Central Cee", explicit: true, increase: false, decrease: false)
                            
                            Track(isPlaying: false, number: 7, trackCover: "abcdefu", name: "abcdefu", artist: "GAYLE", explicit: true, increase: false, decrease: false)
                            
                            Track(isPlaying: false, number: 8, trackCover: "Encanto", name: "We Don't Talk About Bruno", artist: "Carolina Gaitan - La Gaita, Mauro Castilo", explicit: false, increase: false, decrease: true)
                            
                            Track(isPlaying: false, number: 9, trackCover: "Encanto", name: "We Don't Talk About Bruno", artist: "Carolina Gaitan - La Gaita, Mauro Castiloa", explicit: false, increase: true, decrease: false)
                        }
                        
                        Group {
                            Track(isPlaying: false, number: 10, trackCover: "Overseas", name: "Overseas", artist: "D-Block Europe, Central Cee", explicit: true, increase: false, decrease: false)
                            
                            Track(isPlaying: false, number: 11, trackCover: "abcdefu", name: "abcdefu", artist: "GAYLE", explicit: true, increase: true, decrease: false)
                            
                            Track(isPlaying: false, number: 12, trackCover: "Encanto", name: "We Don't Talk About Bruno", artist: "Carolina Gaitan - La Gaita, Mauro Castilo", explicit: false, increase: false, decrease: false)
                            
                            Track(isPlaying: false, number: 13, trackCover: "Encanto", name: "We Don't Talk About Bruno", artist: "Carolina Gaitan - La Gaita, Mauro Castiloa", explicit: false, increase: false, decrease: true)
                            
                            Track(isPlaying: false, number: 14, trackCover: "Overseas", name: "Overseas", artist: "D-Block Europe, Central Cee", explicit: true, increase: false, decrease: false)
                            
                            Track(isPlaying: false, number: 15, trackCover: "abcdefu", name: "abcdefu", artist: "GAYLE", explicit: true, increase: false, decrease: false)
                            
                            Track(isPlaying: false, number: 16, trackCover: "Encanto", name: "We Don't Talk About Bruno", artist: "Carolina Gaitan - La Gaita, Mauro Castilo", explicit: false, increase: true, decrease: false)
                        }
                        
                        
                        
                        
                    }
                        
                    }
                    
                    Spacer()
                    
                }
                VStack {
                    NowPlayingBar(image: "Encanto", trackName: "We Don't Talk About Bruno", artist: "Carolina Gaitan - La Gaita, Mauro Castiloa")
                    NavBar()
                }
                
                
                
            }
            
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Cover: View {
    var body : some View {
        ZStack(alignment: .top) {
            Image("topSongsUK")
                .resizable()
                .frame(width: 250, height: 250)
                .shadow(radius: 5)
            
            Image(systemName: "chevron.left")
                .offset(x: -175)
                .foregroundColor(.white)
        }
        .padding(.init(top: 5, leading: 0, bottom: 0, trailing: 0))
    }
}

struct PlaylistInfo: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text("Your weekly update of the most played tracks right now - United Kingdom.")
                    .foregroundColor(secondaryTextColor)
                    .font(.system(size: 10))
                
                HStack {
                    Image("spotify")
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text("Spotify")
                        .foregroundColor(.white)
                        .font(.system(size: 11))
                        .bold()
                }
                .padding(.init(top: 5, leading: 0, bottom: 0, trailing: 0))
                
            }
        }
    }
}

struct ControlButton : View {
    var body: some View {
        HStack(spacing: 0.0){
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Text("4 February 2022")
                        .foregroundColor(secondaryTextColor)
                        .font(.system(size: 10))
                        .bold()
                    
                    Circle()
                        .frame(width: 3, height: 3)
                        .foregroundColor(secondaryTextColor)
                    
                    Text("4 New Entries")
                        .foregroundColor(secondaryTextColor)
                        .font(.system(size: 10))
                        .bold()
                }
                
                HStack(spacing: 25) {
                    Image(systemName: "heart")
                    Image(systemName: "ellipsis")
                }
                .font(.system(size: 25))
                .foregroundColor(secondaryTextColor)
                
            }
            Spacer()
            
            ZStack {
                Circle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color(#colorLiteral(red: 0.1197520867, green: 0.8382869363, blue: 0.3747090995, alpha: 1)))
                
                Image(systemName: "play.fill")
                    .font(.system(size: 24))
                    .foregroundColor(.black)
            }
        }
        .padding(.horizontal)
    }
}

struct Track: View {
    @State var isPlaying : Bool
    let number : Int
    let trackCover : String
    let name: String
    let artist: String
    let explicit: Bool
    let increase: Bool
    let decrease: Bool
    
    var body : some View {
        HStack {
            VStack(alignment: .leading) {
                HStack(spacing: 8) {
                    VStack {
                        if increase {
                            Image(systemName: "triangle.fill")
                                .foregroundColor(.green)
                                .font(.system(size: 7))
                                .offset(y: -2)
                        }
                        Text("\(number)")
                            .foregroundColor(.white)
                            .font(.system(size: 12))
                        
                        if decrease {
                            Image(systemName: "triangle.fill")
                                .foregroundColor(.red)
                                .font(.system(size: 7))
                                .rotationEffect(.degrees(180))
                                .offset(y: 2)
                        }
                    }
                    
                    
                    Image(trackCover)
                        .resizable()
                        .frame(width: 55, height: 55)
                    
                    VStack(alignment: .leading) {
                        
                        Text(name)
                            .foregroundColor(isPlaying ? .green : .white)
                            .font(.system(size: 14))
                            .bold()
                        
                        
                        HStack(spacing: 2) {
                            
                            if explicit {
                                Image(systemName: "e.square.fill")
                                    .foregroundColor(secondaryTextColor)
                                    .font(.system(size: 16))
                                
                            }
                            
                            
                            Text(artist)
                                .foregroundColor(secondaryTextColor)
                                .font(.system(size: 11))
                                .multilineTextAlignment(.leading)
                                .lineLimit(1)
                        }
                        
                    }
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis")
                        .foregroundColor(secondaryTextColor)
                        .font(.system(size: 18))
                    
                    
                }
                .padding(.horizontal)
                
                
            }
        }
        
        
    }
}

struct NowPlayingBar: View {
    let image : String
    let trackName : String
    let artist : String
    var body : some View {
        
        HStack {
            
            HStack {
                Image(image)
                    .resizable()
                    .frame(width: 40, height: 40)
                
                VStack (alignment: .leading) {
                    Text(trackName)
                        .foregroundColor(.white)
                        .font(.system(size: 12))
                    
                    Text(artist)
                        .foregroundColor(secondaryTextColor)
                        .font(.system(size: 10))
                        .multilineTextAlignment(.leading)
                        .lineLimit(1)
                }
                Spacer()
                Image(systemName: "hifispeaker")
                    .font(.system(size: 26))
                    .foregroundColor(secondaryTextColor)
                
                Image(systemName: "play.fill")
                    .foregroundColor(.white)
            }
            .padding(.horizontal)
            
        }
        ZStack(alignment: .leading) {
            Rectangle()
                .frame(width: 400, height: 2)
                .foregroundColor(.gray)
            
            Rectangle()
                .frame(width: 200, height: 2)
                .foregroundColor(.white)
        }
        
    }
    
}

struct NavBar : View {
    var body: some View {
        ZStack {
            
     
        HStack {
            VStack(spacing: 5){
                Image(systemName: "house.fill")
                    .foregroundColor(.white)
                    .font(.system(size: 28))
                Text("Home")
                    .foregroundColor(.white)
                    .font(.system(size: 12))
            }
            Spacer()
            VStack(spacing: 5) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(secondaryTextColor)
                    .font(.system(size: 28))
                Text("Search")
                    .foregroundColor(secondaryTextColor)
                    .font(.system(size: 12))
            }
             Spacer()
            VStack(spacing: 5) {
                Image(systemName: "square.3.layers.3d.down.right")
                    .foregroundColor(secondaryTextColor)
                    .font(.system(size: 28))
                Text("Library")
                    .foregroundColor(secondaryTextColor)
                    .font(.system(size: 12))
            }
           
        }
        .padding(.init(top: 5, leading: 30, bottom: 5, trailing: 30))
        }
    }
}
