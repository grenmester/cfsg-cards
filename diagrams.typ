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
  "$\"M\"_11$": cetz.canvas({
    import cetz.draw: *

    hobby((-1, 0), (0, 1), (1.4, 1.4), (1, -1), stroke: yellow)
    hobby((1, 0), (0, -1), (-1.4, -1.4), (-1, 1), stroke: yellow)
    line((-1, -1), (1, 1), stroke: yellow)

    hobby((0, -1), (-1, 0), (-1.4, 1.4), (1, 1), stroke: green)
    hobby((0, 1), (1, 0), (1.4, -1.4), (-1, -1), stroke: green)
    line((-1, 1), (1, -1), stroke: green)

    for i in range(-1, 2) {
      line((-1, i), (1, i), stroke: red)
      line((i, -1), (i, 1), stroke: blue)
    }

    for i in range(-1, 2) {
      for j in range(-1, 2) {
        circle((i, j), radius: 0.1, fill: black)
      }
    }
  }),
  "$\"M\"_12$": cetz.canvas({
    import cetz.draw: *

    bezier-through((-2, -2), (-1, 0), (0, 1), stroke: red)
    hobby((0, 1), (1.4, 1.4), (1, -1), stroke: red)
    line((-2, -2), (1, 1), stroke: green)
    bezier-through((-2, -2), (0, -1), (1, 0), stroke: teal)
    hobby((1, 0), (1.4, 1.4), (-1, 1), stroke: teal)

    line((-1, -1), (-1, 1), stroke: orange)
    bezier((-1, -1), (0, -2 * calc.sqrt(2)), (-1, -2), stroke: orange)
    line((0, -2 * calc.sqrt(2)), (0, 1), stroke: olive)
    line((1, -1), (1, 1), stroke: fuchsia)
    bezier((1, -1), (0, -2 * calc.sqrt(2)), (1, -2), stroke: fuchsia)

    bezier-through((2, -2), (0, -1), (-1, 0), stroke: maroon)
    hobby((-1, 0), (-1.4, 1.4), (1, 1), stroke: maroon)
    line((2, -2), (-1, 1), stroke: aqua)
    bezier-through((2, -2), (1, 0), (0, 1), stroke: blue)
    hobby((0, 1), (-1.4, 1.4), (-1, -1), stroke: blue)

    line((1, -1), (-1, -1), stroke: lime)
    bezier((1, -1), (2 * calc.sqrt(2), 0), (2, -1), stroke: lime)
    line((2 * calc.sqrt(2), 0), (-1, 0), stroke: yellow)
    line((1, 1), (-1, 1), stroke: purple)
    bezier((1, 1), (2 * calc.sqrt(2), 0), (2, 1), stroke: purple)

    arc(
      (-2, -2),
      radius: 2 * calc.sqrt(2),
      start: 225deg,
      delta: 135deg,
      stroke: gray,
    )

    for i in range(-1, 2) {
      for j in range(-1, 2) {
        circle((i, j), radius: 0.1, fill: black)
      }
    }

    circle((-2, -2), radius: 0.1, fill: black)
    circle((0, -2 * calc.sqrt(2)), radius: 0.1, fill: black)
    circle((2, -2), radius: 0.1, fill: black)
    circle((2 * calc.sqrt(2), 0), radius: 0.1, fill: black)
  }),
  "$\"M\"_22$": cetz.canvas({
    import cetz.draw: *

    let offsets = (198deg, 18deg, 198deg, 18deg)
    let rs = (1, 2.01, 2.43, 3)

    let pt(x, y) = (
      angle: x * 360deg / 5 + offsets.at(y),
      radius: rs.at(y),
    )

    for i in range(5) {
      arc-through(pt(i, 0), pt(i + 1, 2), pt(i + 2, 0), stroke: gray)
    }

    circle((0, 0), radius: 2.43, stroke: blue)
    hobby(
      pt(1, 2),
      pt(0, 3),
      pt(3, 0),
      pt(4, 0),
      pt(2, 3),
      pt(1, 2),
      stroke: green,
    )
    hobby(
      pt(1, 2),
      pt(3, 3),
      pt(2, 1),
      pt(0, 1),
      pt(4, 3),
      pt(1, 2),
      stroke: red,
    )

    for i in range(5) {
      line(pt(i, 2), pt(i, 3))
      line(pt(i, 3), pt(i + 1, 3), stroke: (dash: "dotted"))
      circle(pt(i, 0), radius: 0.1, fill: black)
      circle(pt(i, 1), radius: 0.1, fill: black)
      circle(pt(i, 2), radius: 0.1, fill: black)
      circle(pt(i, 3), radius: 0.1, fill: black)
    }

    circle((0, 0), radius: 0.1, fill: black)
  }),
  "$\"M\"_23$": cetz.canvas({
    import cetz.draw: *

    let offsets = (198deg, 198deg, 18deg)
    let rs = (1, 2.43, 3)

    let pt(x, y) = (
      angle: x * 360deg / 5 + offsets.at(y),
      radius: rs.at(y),
    )

    for i in range(5) {
      arc-through(pt(i, 0), pt(i + 1, 1), pt(i + 2, 0), stroke: gray)
    }

    hobby(pt(0, 1), pt(1, 2), pt(2, 1), omega: 0.6, stroke: red)
    hobby(pt(0, 2), pt(1, 0), pt(2, 2), stroke: green)
    hobby(pt(3, 0), pt(1, 2), pt(4, 0), stroke: yellow)
    hobby(pt(3, 1), pt(1, 0), pt(4, 1), omega: 0.6, stroke: blue)

    for i in range(5) {
      line(pt(i, 1), pt(i, 2))
      line(pt(i, 2), pt(i + 1, 2))
      circle(pt(i, 0), radius: 0.1, fill: black)
      circle(pt(i, 1), radius: 0.1, fill: black)
      circle(pt(i, 2), radius: 0.1, fill: black)
    }
  }),
  "$\"M\"_24$": cetz.canvas({
    import cetz.draw: *

    let matrix = (
      (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1),
      (0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0),
      (0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1),
      (0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0),
      (0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 1),
      (0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0),
      (0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1),
      (0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 0),
      (0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1),
      (0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0),
      (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1),
      (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1),
    )

    for (i, row) in matrix.enumerate() {
      for (j, val) in row.enumerate() {
        if val == 0 {
          circle((j / 3, -i / 3), radius: 0.1, stroke: gray)
        }
        if val == 1 {
          circle((j / 3, -i / 3), radius: 0.1, fill: black)
        }
      }
    }
  }),
  "default": cetz.canvas({
    import cetz.draw: *

    rect((-1, -1), (2, 2))
  }),
)
