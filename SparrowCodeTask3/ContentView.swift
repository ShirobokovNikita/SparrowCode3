import SwiftUI

struct ContentView: View {
    @State private var isPlaying = true
        @State private var transparency: Double = 0.0
    @State private var count = 0
        
    var body: some View {
        Button {
            isPlaying.toggle()
    
            transparency = 0.6
            
            withAnimation(.easeInOut(duration: 0.1)) {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    transparency = 0.0
                    if count < 2 {
                        count += 1
                        isPlaying.toggle()
                    } else {
                        count = 0
                        isPlaying.toggle()
                    }
                }
            }
        } label: {
            if count == 0 {
                ZStack {
                    
                    Circle()
                        .frame(width: 90, height: 90)
                        .opacity(transparency)
                        HStack(spacing: -8) {
                            Image(systemName: "play.fill")
                                .scaleEffect(isPlaying ? 0 : 1)
                                .offset(x: isPlaying ? -15 : 21)
                                .opacity(isPlaying ? 0 : 1)
                            Image(systemName: "play.fill")
                                .offset(x: isPlaying ? -15 : 18)
                            Image(systemName: "play.fill")
                                .offset(x: isPlaying ? -18 : 17)
                                .scaleEffect(isPlaying ? 1 : 0)
                                .opacity(isPlaying ? 1 : 0)
                        }
                        .font(.system(size: 50))
                        .frame(width: 50)
                        .animation(.spring(response: 0.45, dampingFraction: 0.45, blendDuration: 0))
                }
            }
            else if count == 1 {
                ZStack {
                    Circle()
                        .frame(width: 90, height: 90)
                        .opacity(transparency)
                    HStack(spacing: -10) {
                        Image(systemName: "play.fill")
                            .scaleEffect(isPlaying ? 0 : 1)
                            .offset(x: isPlaying ? -15 : 21)
                        
                            .opacity(isPlaying ? 0 : 1)
                        Image(systemName: "play.fill")
                            .offset(x: isPlaying ? -15 : 18)
                        Image(systemName: "play.fill")
                            .offset(x: isPlaying ? -18 : 17)
                            .scaleEffect(isPlaying ? 1 : 0)
                            .opacity(isPlaying ? 1 : 0)
                    }
                    .font(.system(size: 50))
                    .frame(width: 50)
                    .animation(.spring(response: 0.45, dampingFraction: 0.45, blendDuration: 0))
                }
            } else {
                ZStack {
                    Circle()
                        .frame(width: 90, height: 90)
                        .opacity(transparency)
                    
                    
                    HStack(spacing: -10) {
                        Image(systemName: "play.fill")
                            .scaleEffect(isPlaying ? 0 : 1)
                            .offset(x: isPlaying ? -15 : 21)
                        
                            .opacity(isPlaying ? 0 : 1)
                        Image(systemName: "play.fill")
                            .offset(x: isPlaying ? -15 : 18)
                        Image(systemName: "play.fill")
                            .offset(x: isPlaying ? -18 : 17)
                            .scaleEffect(isPlaying ? 1 : 0)
                            .opacity(isPlaying ? 1 : 0)
                    }
                    .font(.system(size: 50))
                    .frame(width: 50)
                    .animation(.spring(response: 0.45, dampingFraction: 0.45, blendDuration: 0))
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
