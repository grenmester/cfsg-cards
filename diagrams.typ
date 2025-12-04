#import "@preview/cetz:0.4.2"

#let diagrams = (
  "$C_p$": cetz.canvas({
    import cetz.draw: *

    circle((0, 0), radius: 2)
    for i in range(5) {
      circle((angle: 72deg * i, radius: 2), radius: 0.25, fill: black)
    }
  }),
  "$A_n (q)$": cetz.canvas({
    import cetz.draw: *

    circle((0, 0), radius: 0.25)
    circle((2, 0), radius: 0.25)
    circle((4, 0), radius: 0.25)
    circle((6, 0), radius: 0.25)

    line((0.25, 0), (1.75, 0))
    line((2.25, 0), (3.75, 0))
    line((4.25, 0), (5.75, 0), stroke: (dash: "dashed"))

    content((0, -0.6), $1$)
    content((2, -0.6), $2$)
    content((4, -0.6), $3$)
    content((6, -0.6), $n$)
  }),
  "$attach(,t:2)A_n (q^2), n>1$": cetz.canvas({
    import cetz.draw: *

    circle((0, 0), radius: 0.25)
    circle((2, 0), radius: 0.25)
    circle((4, 0), radius: 0.25)
    circle((6, 0), radius: 0.25)

    line((0.25, 0), (1.75, 0))
    line((2.25, 0), (3.75, 0))
    line((4.25, 0), (5.75, 0), stroke: (dash: "dashed"))

    arc-through((1, 0.2), (3, 1), (5, 0.2), mark: (
      start: ">",
      end: ">",
      fill: black,
    ))

    content((0, -0.6), $1$)
    content((2, -0.6), $2$)
    content((4, -0.6), $3$)
    content((6, -0.6), $n$)
    content((3, 1.3), $sigma$)
  }),
  "$C_n (q), n>2$": cetz.canvas({
    import cetz.draw: *

    circle((0, 0), radius: 0.25)
    circle((2, 0), radius: 0.25)
    circle((4, 0), radius: 0.25)
    circle((6, 0), radius: 0.25)

    line((0.25, -0.05), (1.75, -0.05))
    line((0.25, 0.05), (1.75, 0.05))
    line((2.25, 0), (3.75, 0))
    line((4.25, 0), (5.75, 0), stroke: (dash: "dashed"))

    line((1, -0.2), (1.1, 0))
    line((1, 0.2), (1.1, 0))

    content((0, -0.6), $1$)
    content((2, -0.6), $2$)
    content((4, -0.6), $3$)
    content((6, -0.6), $n$)
  }),
  "$B_n (q), n>1$": cetz.canvas({
    import cetz.draw: *

    circle((0, 0), radius: 0.25)
    circle((2, 0), radius: 0.25)
    circle((4, 0), radius: 0.25)
    circle((6, 0), radius: 0.25)

    line((0.25, -0.05), (1.75, -0.05))
    line((0.25, 0.05), (1.75, 0.05))
    line((2.25, 0), (3.75, 0))
    line((4.25, 0), (5.75, 0), stroke: (dash: "dashed"))

    line((1.1, -0.2), (1, 0))
    line((1.1, 0.2), (1, 0))

    content((0, -0.6), $1$)
    content((2, -0.6), $2$)
    content((4, -0.6), $3$)
    content((6, -0.6), $n$)
  }),
  "$D_n (q), n>3$": cetz.canvas({
    import cetz.draw: *

    circle((0, 0), radius: 0.25)
    circle((angle: 0deg, radius: 2), radius: 0.25)
    circle((angle: 135deg, radius: 2), radius: 0.25)
    circle((angle: 225deg, radius: 2), radius: 0.25)
    circle((4, 0), radius: 0.25)

    line((angle: 0deg, radius: 0.25), (angle: 0deg, radius: 1.75))
    line((angle: 135deg, radius: 0.25), (angle: 135deg, radius: 1.75))
    line((angle: 225deg, radius: 0.25), (angle: 225deg, radius: 1.75))
    line((2.25, 0), (3.75, 0), stroke: (dash: "dashed"))

    content((-1.4, 0.85), $1$)
    content((-1.4, -2), $2$)
    content((0, -0.6), $3$)
    content((2, -0.6), $4$)
    content((4, -0.6), $n$)
  }),
  "$attach(,t:2)D_n (q^2), n>3$": cetz.canvas({
    import cetz.draw: *

    circle((0, 0), radius: 0.25)
    circle((angle: 0deg, radius: 2), radius: 0.25)
    circle((angle: 135deg, radius: 2), radius: 0.25)
    circle((angle: 225deg, radius: 2), radius: 0.25)
    circle((4, 0), radius: 0.25)

    line((angle: 0deg, radius: 0.25), (angle: 0deg, radius: 1.75))
    line((angle: 135deg, radius: 0.25), (angle: 135deg, radius: 1.75))
    line((angle: 225deg, radius: 0.25), (angle: 225deg, radius: 1.75))
    line((2.25, 0), (3.75, 0), stroke: (dash: "dashed"))

    arc-through((-1.8, -1.2), (-2.3, 0), (-1.8, 1.2), mark: (
      start: ">",
      end: ">",
      fill: black,
    ))

    content((-1.4, 0.85), $1$)
    content((-1.4, -2), $2$)
    content((0, -0.6), $3$)
    content((2, -0.6), $4$)
    content((4, -0.6), $n$)
    content((-2.6, 0), $sigma$)
  }),
  "$G_2(q)$": cetz.canvas({
    import cetz.draw: *

    circle((0, 0), radius: 0.25)
    circle((2, 0), radius: 0.25)

    line((0.25, -0.1), (1.75, -0.1))
    line((0.25, 0), (1.75, 0))
    line((0.25, 0.1), (1.75, 0.1))

    line((1, -0.2), (1.1, 0))
    line((1, 0.2), (1.1, 0))

    content((0, -0.6), $1$)
    content((2, -0.6), $2$)
  }),
  "$F_4(q)$": cetz.canvas({
    import cetz.draw: *

    circle((0, 0), radius: 0.25)
    circle((2, 0), radius: 0.25)
    circle((4, 0), radius: 0.25)
    circle((6, 0), radius: 0.25)

    line((0.25, 0), (1.75, 0))
    line((2.25, -0.05), (3.75, -0.05))
    line((2.25, 0.05), (3.75, 0.05))
    line((4.25, 0), (5.75, 0))

    line((3, -0.2), (3.1, 0))
    line((3, 0.2), (3.1, 0))

    content((0, -0.6), $1$)
    content((2, -0.6), $2$)
    content((4, -0.6), $3$)
    content((6, -0.6), $4$)
  }),
  "$E_6(q)$": cetz.canvas({
    import cetz.draw: *

    circle((0, 0), radius: 0.25)
    circle((1, 0), radius: 0.25)
    circle((2, 0), radius: 0.25)
    circle((3, 0), radius: 0.25)
    circle((4, 0), radius: 0.25)
    circle((2, 1), radius: 0.25)

    line((0.25, 0), (0.75, 0))
    line((1.25, 0), (1.75, 0))
    line((2.25, 0), (2.75, 0))
    line((3.25, 0), (3.75, 0))
    line((2, 0.25), (2, 0.75))

    content((0, -0.6), $1$)
    content((1, -0.6), $2$)
    content((2, -0.6), $3$)
    content((3, -0.6), $5$)
    content((4, -0.6), $6$)
    content((2, 1.6), $4$)
  }),
  "$attach(,t:2)E_6(q^2)$": cetz.canvas({
    import cetz.draw: *

    circle((0, 0), radius: 0.25)
    circle((1, 0), radius: 0.25)
    circle((2, 0), radius: 0.25)
    circle((3, 0), radius: 0.25)
    circle((4, 0), radius: 0.25)
    circle((2, 1), radius: 0.25)

    line((0.25, 0), (0.75, 0))
    line((1.25, 0), (1.75, 0))
    line((2.25, 0), (2.75, 0))
    line((3.25, 0), (3.75, 0))
    line((2, 0.25), (2, 0.75))

    arc-through((0.2, -0.4), (2, -1.4), (3.8, -0.4), mark: (
      start: ">",
      end: ">",
      fill: black,
    ))
    arc-through((1.2, -0.4), (2, -0.9), (2.8, -0.4), mark: (
      start: ">",
      end: ">",
      fill: black,
    ))

    content((2, -1.1), $sigma$)
  }),
  "$E_7(q)$": cetz.canvas({
    import cetz.draw: *

    circle((0, 0), radius: 0.25)
    circle((1, 0), radius: 0.25)
    circle((2, 0), radius: 0.25)
    circle((3, 0), radius: 0.25)
    circle((4, 0), radius: 0.25)
    circle((5, 0), radius: 0.25)
    circle((2, 1), radius: 0.25)

    line((0.25, 0), (0.75, 0))
    line((1.25, 0), (1.75, 0))
    line((2.25, 0), (2.75, 0))
    line((3.25, 0), (3.75, 0))
    line((4.25, 0), (4.75, 0))
    line((2, 0.25), (2, 0.75))

    content((0, -0.6), $1$)
    content((1, -0.6), $2$)
    content((2, -0.6), $3$)
    content((3, -0.6), $5$)
    content((4, -0.6), $6$)
    content((5, -0.6), $7$)
    content((2, 1.6), $4$)
  }),
  "$E_8(q)$": cetz.canvas({
    import cetz.draw: *

    circle((0, 0), radius: 0.25)
    circle((1, 0), radius: 0.25)
    circle((2, 0), radius: 0.25)
    circle((3, 0), radius: 0.25)
    circle((4, 0), radius: 0.25)
    circle((5, 0), radius: 0.25)
    circle((6, 0), radius: 0.25)
    circle((2, 1), radius: 0.25)

    line((0.25, 0), (0.75, 0))
    line((1.25, 0), (1.75, 0))
    line((2.25, 0), (2.75, 0))
    line((3.25, 0), (3.75, 0))
    line((4.25, 0), (4.75, 0))
    line((5.25, 0), (5.75, 0))
    line((2, 0.25), (2, 0.75))

    content((0, -0.6), $1$)
    content((1, -0.6), $2$)
    content((2, -0.6), $3$)
    content((3, -0.6), $5$)
    content((4, -0.6), $6$)
    content((5, -0.6), $7$)
    content((6, -0.6), $8$)
    content((2, 1.6), $4$)
  }),
  "$attach(,t:3)D_4(q^3)$": cetz.canvas({
    import cetz.draw: *

    circle((0, 0), radius: 0.25)

    for i in range(3) {
      circle((angle: 120deg * i, radius: 2), radius: 0.25)
      line((angle: 120deg * i, radius: 0.25), (angle: 120deg * i, radius: 1.75))
      arc(
        (0, 0),
        start: 120deg * i + 15deg,
        stop: 120deg * i + 105deg,
        radius: 2,
        anchor: "origin",
        mark: (
          start: ">",
          end: ">",
          fill: black,
        ),
      )
    }

    content((-2.25, 0), $sigma$)
  }),
  "$attach(,t:2)B_2(q), q=2^(2n+1)$": cetz.canvas({
    import cetz.draw: *

    circle((0, 0), radius: 0.25)
    circle((2, 0), radius: 0.25)
    circle((4, 0), radius: 0.25)
    circle((6, 0), radius: 0.25)

    line((0.25, -0.05), (1.75, -0.05))
    line((0.25, 0.05), (1.75, 0.05))
    line((2.25, 0), (3.75, 0))
    line((4.25, 0), (5.75, 0), stroke: (dash: "dashed"))

    line((1.1, -0.2), (1, 0))
    line((1.1, 0.2), (1, 0))

    arc-through((1, 0.4), (3, 1), (5, 0.4), mark: (
      start: ">",
      end: ">",
      fill: black,
    ))

    content((0, -0.6), $1$)
    content((2, -0.6), $2$)
    content((4, -0.6), $3$)
    content((6, -0.6), $n$)
    content((3, 1.3), $sigma$)
  }),
  "$attach(,t:2)G_2(q), q=3^(2n+1)$": cetz.canvas({
    import cetz.draw: *

    circle((0, 0), radius: 0.25)
    circle((2, 0), radius: 0.25)

    line((0.25, -0.1), (1.75, -0.1))
    line((0.25, 0), (1.75, 0))
    line((0.25, 0.1), (1.75, 0.1))

    line((1, -0.2), (1.1, 0))
    line((1, 0.2), (1.1, 0))

    arc-through((0.2, 0.4), (1, 0.8), (1.8, 0.4), mark: (
      start: ">",
      end: ">",
      fill: black,
    ))

    content((0, -0.6), $1$)
    content((2, -0.6), $2$)
    content((1, 1.1), $sigma$)
  }),
  "$attach(,t:2)F_4(q), q=2^(2n+1)$": cetz.canvas({
    import cetz.draw: *

    circle((0, 0), radius: 0.25)
    circle((2, 0), radius: 0.25)
    circle((4, 0), radius: 0.25)
    circle((6, 0), radius: 0.25)

    line((0.25, 0), (1.75, 0))
    line((2.25, -0.05), (3.75, -0.05))
    line((2.25, 0.05), (3.75, 0.05))
    line((4.25, 0), (5.75, 0))

    line((3, -0.2), (3.1, 0))
    line((3, 0.2), (3.1, 0))

    arc-through((1, 0.2), (3, 1), (5, 0.2), mark: (
      start: ">",
      end: ">",
      fill: black,
    ))

    content((0, -0.6), $1$)
    content((2, -0.6), $2$)
    content((4, -0.6), $3$)
    content((6, -0.6), $4$)
    content((3, 1.3), $sigma$)
  }),
  "default": cetz.canvas({
    import cetz.draw: *

    rect((-1, -1), (2, 2))
  }),
)
