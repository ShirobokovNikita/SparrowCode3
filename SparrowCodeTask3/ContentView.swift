import SwiftUI

struct ContentView: View {
    @State private var isPlaying = true
        @State private var transparency: Double = 0.0
    @State private var count = 0
//    @State private var isButtonDisabled = false
        
    var body: some View {
        Button {
            isPlaying.toggle()
//            isButtonDisabled = true
    
//            transparency = 0.6
            
           
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                    transparency = 0.0
                   
                    if count == 0 {
                        count += 1
                    } else {
                        count = 0
                    }
//                    isButtonDisabled = false
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
                        .animation(.spring(response: 0.55, dampingFraction: 0.45, blendDuration: 0))
                }
            }
            else {
                ZStack {
                    Circle()
                        .frame(width: 90, height: 90)
                        .opacity(transparency)
                    HStack(spacing: -8) {
                        Image(systemName: "play.fill")
                            .scaleEffect(isPlaying ? 1 : 0)
                            .offset(x: isPlaying ? 21 : -15)
                        
                            .opacity(isPlaying ? 1 : 0)
                        Image(systemName: "play.fill")
                            .offset(x: isPlaying ? 18 : -15)
                        Image(systemName: "play.fill")
                            .offset(x: isPlaying ? 17 : -18)
                            .scaleEffect(isPlaying ? 0 : 1)
                            .opacity(isPlaying ? 0 : 1)
                    }
                    .font(.system(size: 50))
                    .frame(width: 50)
                    .animation(.spring(response: 0.55, dampingFraction: 0.45, blendDuration: 0))
                }
            }
        }
//        .disabled(isButtonDisabled)
    }
}

#Preview {
    ContentView()
}
