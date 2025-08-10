class User {
    static let playerNum;

    let id: int;
    var onTurn: bool;
    var hand: Card[];

    init(hand: Card[]) {
        User.playerNum++;
        id = User.playerNum;
        self.hand = hand;
        onTurn = false;
    }

    func playCard(card: Card, to dest: User) {
        removeCard(card);
        dest.addCard(card: card);
    }

    func takeCard(card: Card, from: User) {
        addCard(card);
        from.removeCard(card);
    }

    func addCard(card: Card) {
        hand.append(card);
    }

    func removeCard(card: Card) {
        hand.remove(at: findCard(card));
    }

    func findCard(card: Card) -> int{
        return hand.firstIndex(of: card);
    }

    func displayHand() {
        for card in hand {
            print(card);
        }
    }

}