import SwiftUI

struct DynamicFontSize: ViewModifier {
    @Environment(\.sizeCategory) var sizeCategory
    var fontSize: CGFloat
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: fontSize))
    }
}

extension View {
    func dynamicFontSize(_ fontSize: CGFloat) -> some View {
        self.modifier(DynamicFontSize(fontSize: fontSize))
    }
}

struct Appearance: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var fontSize: CGFloat = 14 // Default font size
    
    var body: some View {
        ZStack {
            Color("background")
                .ignoresSafeArea()
            
            VStack {
                Form {
                    Section(header: Text("App Mode")) {
                        Toggle(isOn: Binding<Bool>(
                            get: {
                                self.colorScheme == .dark
                            },
                            set: { _ in
                                UIApplication.shared.windows.first?.overrideUserInterfaceStyle = self.colorScheme == .dark ? .light : .dark
                            }
                        )) {
                            Text("Dark Mode")
                        }
                    }
                    
                    Section(header: Text("Font Size")) {
                        Stepper(value: $fontSize, in: 10...30, step: 2) {
                            Text("Font Size: \(Int(fontSize))")
                        }
                        .foregroundColor(.accentColor)
                    }
                }
                .scrollContentBackground(.hidden)
                .foregroundColor(.init(Color("text")))
                .listStyle(InsetGroupedListStyle())
                .navigationBarTitle("Edit Profile")
                .modifier(DynamicFontSize(fontSize: fontSize)) // Apply font size dynamically to all text within this view
            }
        }
    }
}

struct Appearance_Previews: PreviewProvider {
    static var previews: some View {
        Appearance()
    }
}
