import SwiftUI
import Kingfisher

struct CharacterRow: View {
    
    var character: MarvelCharacter
    
    var body: some View {
        VStack {
            HStack {
                KFImage(character.thumbnail?.getImageURL())
                    .resizable()
                    .cornerRadius(6)
                    .frame(width: 32, height: 32)
                if (character.name != nil) {
                    Text(character.name!)
                }
                else {
                    Text("Unknown")
                }
            }
        }
    }
}

struct CharacterRow_Previews: PreviewProvider {
    static var previews: some View {
        CharacterRow(character: MarvelCharacter.ironMan)
    }
}