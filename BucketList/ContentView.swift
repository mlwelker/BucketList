
import SwiftUI

enum LoadingState {
    case loading, success, failed
}

struct LoadingView: View {
    var body: some View {
        Text("loading...")
    }
}

struct SuccessView: View {
    var body: some View {
        Text("success")
    }
}

struct FailedView: View {
    var body: some View {
        Text("failed")
    }
}

struct ContentView: View {
    var loadingState = LoadingState.loading
    
    var body: some View {
        if Bool.random() {
            Rectangle()
        } else {
            Circle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
