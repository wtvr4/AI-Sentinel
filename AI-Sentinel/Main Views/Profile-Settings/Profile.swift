import SwiftUI

struct Profile: View {
    var body: some View {
        ZStack {
            Color("background")
                .ignoresSafeArea()
            
            VStack {
                Form {
                    Section {
                        HStack {
                            Text("MB")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(Color("text"))
                                .frame(width: 72, height: 72)
                                .background(Color("secondary"))
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Mohamed Badir")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("text"))
                                    .padding(.top, 4)
                                
                                Text("example@email.com")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("text"))
                            }
                        }
                        
                    }.listRowBackground(Color("primary"))
                    
                    // account info section
                    Section("Account Settings") {
                        
                            SectionRowView(imageName: "square.and.pencil.circle.fill", imageColor: "text",
                                           title: "Details", titleColor: "text")
                        
                    }.listRowBackground(Color("primary"))
                    
                    
                    
                    // preferences section
                    Section("Preferences") {
                        
                        SectionRowView(imageName: "eye.circle.fill", imageColor: "text",
                                       title: "Appearance", titleColor: "text")
                         
                        
                        SectionRowView(imageName: "textformat.alt", imageColor: "text",
                                       title: "Language", titleColor: "text")
                        
                        
                        
                    }.listRowBackground(Color("primary"))
                    
                    
                    
                    // about the app section
                    Section("About") {
                        HStack {
                            SectionRowView(imageName: "gear", imageColor: "accent",
                                           title: "Version", titleColor: "text")
                            
                            Spacer()
                            
                            Text("1.0.0")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        
                    }.listRowBackground(Color("primary"))
                    
                    Section("Action") {
                        
                        SectionRowView(imageName: "arrow.left.circle.fill", imageColor: "red", title: "Sign Out", titleColor: "text")
                        
                        SectionRowView(imageName: "xmark.circle.fill", imageColor: "red", title: "Delete Account", titleColor: "text")
                        
                        
                    }
                    .listRowBackground(Color("primary"))
                    
                    
                    
                }
                .scrollContentBackground(.hidden)
                
                
            }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
