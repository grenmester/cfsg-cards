#import "diagrams.typ": diagrams

#set page(margin: (rest: 0.34in))

#let cards = yaml("card-data.yml")

#let genCard(card, suit, rank) = {
  let color = black
  if suit == sym.suit.diamond.filled or suit == sym.suit.heart.filled {
    color = red
  }

  let diagram = diagrams.at(card.family, default: diagrams.at("default"))

  let name = grid(
    gutter: 6pt,
    align(center, text(size: 20pt, weight: "bold", fill: color)[#rank]),
    align(center, text(size: 14pt, fill: color)[#suit]),
  )

  [
    #box(stroke: 1pt, height: 3.5in, width: 2.5in, inset: 3mm, radius: 3.5mm)[
      #align(top + left, name)
      #align(horizon + center, box(width: 1.75in, height: 0.5in)[
        _#upper(text(size: 8pt, card.category))_ \
        #text(size: 14pt, eval(card.family)) \
        #text(size: 10pt, card.class)
      ])
      #align(horizon + center, box(width: 1.75in, height: 2in)[
        #text(size: 6pt, card.icon)
        #scale(x: 8em, y: auto)[#diagram]
        // #box(stroke: 1pt)[#scale(x: 8em, y: auto)[#diagram]] \
        #text(size: 6pt, card.fun_fact)
      ])
      #align(horizon + center, box(width: 1.65in, height: 0.3in)[
        #text(size: 8pt, eval(card.order))
      ])
      #align(bottom + right, rotate(180deg, name))
    ]
  ]
}

#let genCards(cards) = {
  let suits = (
    sym.suit.club.filled,
    sym.suit.diamond.filled,
    sym.suit.heart.filled,
    sym.suit.spade.filled,
  )
  let ranks = ("2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A")

  for (i, card) in cards.enumerate() {
    let suit = suits.at(calc.div-euclid(i, 13))
    let rank = ranks.at(calc.rem-euclid(i, 13))
    genCard(card, suit, rank)
  }
}

#genCards(cards)
