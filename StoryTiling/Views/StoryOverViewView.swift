//
//  ContentView.swift
//  IV
//
//  Created by alessandro on 15/11/21.
//
import SwiftUI


struct StoryOverviewView: View {
    
    let currentStory: Story
    
    @State var storyTitle = Story.byDefault.name
    @State var tempName: String = ""
    @State var isModifying = false
    @State private var showingActionSheet = false
    
    
    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack {
                
                if isModifying {
                    TextField("Name your story", text: $tempName)
                        .onSubmit(){
                            if tempName != ("") {
                                storyTitle = tempName
                                // Here it should change the real title
                                // of the real story in the database
                                tempName = ""
                                isModifying.toggle()
                            } else {
                                isModifying.toggle()
                            }
                        }
                } else {
                    HStack{
                        Text("\(storyTitle)")
                            .font(.title2)
                            .fontWeight(.bold)
                        Button(action: {
                            isModifying.toggle()
                        }, label: {
                            Image(systemName: "pencil")
                                .font(.title3)
                                .foregroundColor(.customSystemBlue)
                            
                        })
                        Spacer()
                    }
                }
                
                List(currentStory.tiles, id: \.self) { tile in
                    Section {
                        NavigationLink(destination: Text("test")){
                            HStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 17)
                                        .frame(width: geometry.size.width * 0.245, height: geometry.size.width * 0.245)
                                        .foregroundColor(.customGreen)
                                    Image(tile.image)
                                        .resizable()
                                        .frame(width: geometry.size.width * 0.245 * 0.8, height: geometry.size.width * 0.245 * 0.8)
                                        .scaledToFit()
                                }
                                
                                VStack{
                                    HStack{
                                        Text("\(tile.category.rawValue.capitalized)")
                                            .font(.title)
                                            .fontWeight(.semibold)
                                        Spacer()
                                    }
                                    
                                    HStack{
                                        Text(tile.name)
                                            .font(.title2)
                                            .foregroundColor(.gray)
                                        Spacer()
                                    }
                                    HStack{
                                        Text(tile.description)
                                            .font(.body)
                                        Spacer()
                                    }
                                    
                                }
                                
                            }
                            .padding(.top)
                            .padding(.bottom)
                        }
                        .background(Color.customGray)
                    }
                    .listRowInsets(EdgeInsets())
                    .listRowSeparator(.hidden, edges: .top)
                }
                .listStyle(.plain)
                
                Button(action: {
                    
                }, label: {
                    Text("Next")
                        .padding()
                        .frame(maxWidth: .infinity, maxHeight: geometry.size.height * 0.03)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.customSystemBlue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                })
                    .padding(.bottom)
                    .padding(.bottom)
                    
            }
            .padding()
            .background(Color.customGray)
            .navigationTitle("Overview")
            
            .toolbar {
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showingActionSheet = true
                    }, label: {
                        Text("Edit")
                            .foregroundColor(.customSystemBlue)
                            .actionSheet(isPresented: $showingActionSheet) {
                                ActionSheet(title: Text("Choose an option"), buttons: [
                                    .destructive(Text("Delete Story")) {
                                        
                                    },
                                    .default(Text("Save to Favorites")) {
                                        
                                    },
                                    .cancel()
                                ])
                            }
                    })
                }
                
            }
        }
    }
}


struct StoryOverviewView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            //StoryOverviewView()
            
            StoryOverviewView(currentStory: .init(name: Story.byDefault.name, presentationImage: "", tiles: Story.byDefault.tiles))
            
        }

    }
}
