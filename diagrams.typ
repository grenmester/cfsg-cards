#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"

#let leech-lattice = cetz.canvas({
  import cetz.draw: *

  set-style(radius: 0.5, stroke: (dash: "dotted"))

  let w = calc.sqrt(3) / 2

  circle((-1.5, -w))
  circle((-0.5, -w))
  circle((0.5, -w))
  circle((1.5, -w))
  circle((-1, 0))
  circle((0, 0))
  circle((1, 0))
  circle((-1.5, w))
  circle((-0.5, w))
  circle((0.5, w))
  circle((1.5, w))
})

#let diagrams = (
  "$C_p$": cetz.canvas({
    import cetz.draw: *

    circle((0, 0), radius: 2)
    for i in range(5) {
      circle((angle: 72deg * i, radius: 2), radius: 0.25, fill: black)
    }
  }),
  "$A_n, n>4$": cetz.canvas({
    import cetz.draw: *

    let pt(x) = (angle: x * 360deg / 5 + 90deg, radius: 2)

    for i in range(5) {
      for j in range(i + 1, 5) {
        for k in range(j + 1, 5) {
          line(
            pt(i),
            pt(j),
            pt(k),
            pt(i),
            fill: black.transparentize(90%),
            stroke: 0.25pt,
          )
        }
      }
      circle(pt(i), radius: 0.05, fill: black)
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
  "$\"J\"_1$": cetz.canvas({
    import cetz.draw: *

    let c(angle, radius) = {
      rotate(angle)
      circle((0, 0), radius: (3, radius))
      rotate(-2 * angle)
      circle((0, 0), radius: (3, radius))
      rotate(angle)
    }

    let draw(x, y) = {
      circle((-x, -y))
      circle((-x, y))
      circle((x, -y))
      circle((x, y))
    }

    merge-path(
      {
        line((0, 1.37), (0, 0), (0.91, 0))
        bezier((0.91, 0), (0, 1.37), (0.45, 0.75))
      },
      fill: black.transparentize(80%),
      stroke: none,
    )

    line((-3, 0), (3, 0))
    line((0, -3), (0, 3))
    circle((0, 0), radius: 3)

    c(20.905deg, 1.3)
    c(58.283deg, 0.784)
    c(58.283deg, 2.261)

    set-style(radius: 0.1, fill: red)
    draw(0, 2.72)
    draw(0.91, 0)
    draw(1.62, 1.62)
    draw(2.8, 1.07)

    set-style(radius: 0.1, fill: green)
    draw(0, 3)
    draw(0.88, 2.3)
    draw(1.32, 0.82)
    draw(2.38, 1.47)
    draw(3, 0)

    set-style(radius: 0.1, fill: blue)
    draw(0, 1.37)
    draw(1.57, 2.55)
    draw(2.41, 0)
  }),
  "$\"J\"_2$": cetz.canvas({
    import cetz.draw: *

    let pt(x) = (angle: x * 360deg / 14, radius: 3)

    for i in range(0, 14, step: 2) {
      line(pt(i), pt(i + 1))
      line(pt(i), pt(i + 5))
      line(pt(i), pt(i + 13))
      circle(pt(i), radius: 0.1, fill: black)
      circle(pt(i + 1), radius: 0.1, fill: black)
    }
  }),
  "$\"HS\"$": cetz.canvas({
    import cetz.draw: *

    content((0, 0), leech-lattice)

    line((0, 0), (1.5, -calc.sqrt(3) / 2), mark: (end: "straight"))
    content((0.5, -0.85), $sqrt(6)$)

    line((0, 0), (1.5, calc.sqrt(3) / 2), mark: (end: "straight"))
    content((0.5, 0.75), $sqrt(6)$)

    line(
      (1.5, -calc.sqrt(3) / 2),
      (0, 0),
      (1.5, 0.866),
      fill: black.transparentize(90%),
    )
    content((1.75, 0), $2$)
  }),
  "$\"McL\"$": cetz.canvas({
    import cetz.draw: *

    content((0, 0), leech-lattice)

    line((0, 0), (0.5, -calc.sqrt(3) / 2), mark: (end: "straight"))
    circle((0, -0.6), radius: 0.2, fill: white, stroke: (paint: white))
    content((0, -0.6), $2$)

    line((0, 0), (0.5, calc.sqrt(3) / 2), mark: (end: "straight"))
    circle((0, 0.6), radius: 0.2, fill: white, stroke: (paint: white))
    content((0, 0.6), $2$)

    line(
      (0.5, -calc.sqrt(3) / 2),
      (0, 0),
      (0.5, 0.866),
      fill: black.transparentize(90%),
    )
    content((0.9, 0), $sqrt(6)$)
  }),
  "$\"He\"$": cetz.canvas({
    import cetz.draw: *

    let offsets = (90deg, 115deg, 90deg)
    let rs = (1.1, 2, 2.5)

    let pt(x, y) = (
      angle: y * 360deg / 7 + offsets.at(calc.rem-euclid(x, 3)),
      radius: rs.at(calc.rem-euclid(x, 3)),
    )

    for i in range(3) {
      for j in range(7) {
        line(pt(i, j), pt(i + 1, j), stroke: red)
      }
    }

    for i in range(3) {
      for j in range(7) {
        line(pt(i, j), pt(i, j - i + 3))
        circle(pt(i, j), radius: 0.05, fill: black)
      }
    }

    let arrow-positions = (
      (35deg, 0.865, 16.5deg, black),
      (5deg, 1.257, -82.9deg, black),
      (9deg, 2.257, -86.2deg, black),
      (6deg, 1.633, 30.9deg, red),
      (38.6deg, 1.75, 180deg, red),
      (0deg, 2.162, -63.8deg, red),
    )

    for (offset, r, rotation, color) in arrow-positions {
      let pt(x, length) = (angle: x * 360deg / 7 + offset, radius: r - length)

      for i in range(7) {
        rotate(rotation, origin: pt(i, 0))
        line(pt(i, 0), pt(i, 0.1), stroke: color, mark: (start: "straight"))
        rotate(-rotation, origin: pt(i, 0))
      }
    }
  }),
  "$\"Ru\"$": cetz.canvas({
    import cetz.draw: *
    import cetz-plot: *

    set-style(
      axes: (
        grid: (stroke: (dash: "dotted", paint: gray)),
        overshoot: 0,
        padding: 0.25,
        shared-zero: false,
        x: (mark: (start: ">", end: ">", fill: black)),
        y: (mark: (start: ">", end: ">", fill: black)),
      ),
    )

    plot.plot(
      axis-style: "school-book",
      size: (7, 5),
      x-format: none,
      x-grid: true,
      x-label: "Re",
      x-max: 3.5,
      x-min: -3.5,
      x-tick-step: 1,
      y-format: none,
      y-grid: true,
      y-label: "Im",
      y-max: 2.5,
      y-min: -2.5,
      y-tick-step: 1,
      {
        plot.add(domain: (0, 0), x => 0)
        plot.annotate(line((0, 0), (3, 2), mark: (end: "straight")))
        plot.annotate(content((2.6, 2.3), box(
          $a + b i in ZZ[i]$,
          inset: 0.25em,
          fill: white,
        )))
      },
    )
  }),
  "$\"Suz\"$": cetz.canvas({
    import cetz.draw: *
    import cetz-plot: *

    set-style(
      axes: (
        overshoot: 0,
        padding: 0.25,
        shared-zero: false,
        x: (mark: (start: ">", end: ">", fill: black)),
        y: (mark: (start: ">", end: ">", fill: black)),
      ),
    )

    let w = calc.sqrt(3) / 2

    let plot-style = (
      axis-style: "school-book",
      size: (7, 5),
      x-format: none,
      x-label: "Re",
      x-max: 3.5,
      x-min: -3.5,
      x-tick-step: 1,
      y-format: none,
      y-label: "Im",
      y-max: 2.5,
      y-min: -2.5,
      y-tick-step: w,
    )

    plot.plot(
      ..plot-style,
      {
        plot.add(domain: (0, 0), x => 0)
        for i in range(-4, 5) {
          plot.add(
            domain: (-3.5, 3.5),
            x => -2 * w * (x - i),
            style: (stroke: (dash: "dotted", paint: gray)),
          )
          plot.add(
            domain: (-3.5, 3.5),
            x => 2 * w * (x - i),
            style: (stroke: (dash: "dotted", paint: gray)),
          )
          plot.add(
            domain: (-3.5, 3.5),
            x => i * w,
            style: (stroke: (dash: "dotted", paint: gray)),
          )
        }
        plot.annotate(line((0, 0), (2, 2 * w), mark: (end: "straight")))
        plot.annotate(content((2.5, 2), box(
          $a + b omega in ZZ[omega]$,
          inset: 0.25em,
          fill: white,
        )))
      },
    )
    plot.plot(..plot-style, plot.add(domain: (0, 0), x => 0))
  }),
  "$\"O'N\"$": cetz.canvas({
    import cetz.draw: *
    import cetz-plot: *

    set-style(axes: (
      grid: (stroke: (dash: "dotted", paint: gray)),
      x: (mark: (end: ">", fill: black)),
      y: (mark: (end: ">", fill: black)),
    ))

    let f-lower(x) = (
      (-x - 1 - calc.sqrt(4 * x * x * x + 5 * x * x - 38 * x - 39)) / 2
    )
    let f-upper(x) = (
      (-x - 1 + calc.sqrt(4 * x * x * x + 5 * x * x - 38 * x - 39)) / 2
    )

    plot.plot(
      axis-style: "left",
      size: (5, 5),
      x-grid: true,
      x-max: 5.5,
      x-min: -4,
      x-tick-step: 2,
      y-grid: true,
      y-tick-step: 4,
      {
        plot.add(domain: (-3.25, -1), f-lower, samples: 200, style: (
          stroke: black,
        ))
        plot.add(domain: (3, 3.1), f-lower, style: (stroke: black))
        plot.add(domain: (3.1, 5), f-lower, style: (stroke: black))
        plot.add(domain: (-3.25, -1), f-upper, samples: 200, style: (
          stroke: black,
        ))
        plot.add(domain: (3, 3.1), f-upper, style: (stroke: black))
        plot.add(domain: (3.1, 5), f-upper, style: (stroke: black))
      },
    )
  }),
  "$\"Co\"_1$": leech-lattice,
  "$\"Co\"_2$": cetz.canvas({
    import cetz.draw: *

    content((0, 0), leech-lattice)

    line((0, 0), (0.5, calc.sqrt(3) / 2), mark: (end: "straight"))
    circle((0, 0.6), radius: 0.2, fill: white, stroke: (paint: white))
    content((0, 0.6), $2$)
  }),
  "$\"Co\"_3$": cetz.canvas({
    import cetz.draw: *

    content((0, 0), leech-lattice)

    line((0, 0), (1.5, calc.sqrt(3) / 2), mark: (end: "straight"))
    content((0.55, 0.75), $sqrt(6)$)
  }),
  "$\"HN\"$": cetz.canvas({
    import cetz.draw: *

    let pt(x, y) = (angle: x * 360deg / 5 + 18deg, radius: y)

    for i in range(5) {
      line(pt(i, 1), pt(i, 1.75), stroke: red)
      line(pt(i, 1), pt(i + 1, 1))
      line(pt(i, 1.75), pt(i + 1, 1.75))
      circle(pt(i, 1), radius: 0.05, fill: black)
      circle(pt(i, 1.75), radius: 0.05, fill: black)
    }

    let arrow-positions = (
      (66deg, 0.827, 78deg),
      (48deg, 1.423, -84deg),
    )

    for (offset, r, rotation) in arrow-positions {
      let pt(x, length) = (angle: x * 360deg / 5 + offset, radius: r - length)

      for i in range(5) {
        rotate(rotation, origin: pt(i, 0))
        line(pt(i, 0), pt(i, 0.1), stroke: black, mark: (start: "straight"))
        rotate(-rotation, origin: pt(i, 0))
      }
    }
  }),
  "$\"Ly\"$": cetz.canvas({
    import cetz.draw: *

    let pt(x) = (angle: x * 360deg / 11 + 90deg, radius: 2)

    for i in range(11) {
      for j in range(i + 1, 11) {
        for k in range(j + 1, 11) {
          line(
            pt(i),
            pt(j),
            pt(k),
            pt(i),
            fill: black.transparentize(99%),
            stroke: 0.25pt,
          )
        }
      }
      circle(pt(i), radius: 0.01, fill: black)
    }
  }),
  "$MM$": cetz.canvas({
    import cetz.draw: *
    import cetz-plot: *

    set-style(
      axes: (
        overshoot: 0,
        padding: 0.25,
        shared-zero: false,
        x: (mark: (start: ">", end: ">", fill: black)),
        y: (mark: (end: ">", fill: black)),
      ),
    )

    let plot-style = (
      axis-style: "school-book",
      size: (7, 4),
      x-format: none,
      x-max: 2.1,
      x-min: -2.1,
      x-tick-step: 1,
      y-format: none,
      y-max: 2.5,
      y-min: 0,
      y-tick-step: 1,
    )

    plot.plot(..plot-style, plot.add(domain: (0, 0), x => 0))

    set-style(stroke: 0.5pt)

    plot.plot(
      ..plot-style,
      {
        plot.add(domain: (0, 0), x => 0)

        plot.annotate(line((-1.5, 0), (-1.5, 2.5)))
        plot.annotate(line((-0.5, 0), (-0.5, 2.5)))
        plot.annotate(line((0.5, 0), (0.5, 2.5)))
        plot.annotate(line((1.5, 0), (1.5, 2.5)))

        plot.annotate(arc((-1, 0), start: 0deg, stop: 90deg, radius: 1))
        for i in range(3) {
          plot.annotate(arc((i, 0), start: 0deg, stop: 180deg, radius: 1))
        }
        plot.annotate(arc((2, 1), start: 90deg, stop: 180deg, radius: 1))

        for i in range(-2, 2) {
          for r in range(3, 11, step: 2) {
            plot.annotate(arc(
              (i, 0),
              start: 0deg,
              stop: 180deg,
              anchor: "arc-end",
              radius: 1 / r,
            ))
            plot.annotate(arc(
              (i + 1, 0),
              start: 0deg,
              stop: 180deg,
              radius: 1 / r,
            ))
          }
        }

        for i in range(-2, 2) {
          for j in range(2, 6) {
            plot.annotate(arc(
              (i + 1 / j, 0),
              start: 0deg,
              stop: 180deg,
              radius: 1 / (j * j + 2 * j),
            ))
            plot.annotate(arc(
              (i + 1 - 1 / j, 0),
              start: 0deg,
              stop: 180deg,
              anchor: "arc-end",
              radius: 1 / (j * j + 2 * j),
            ))
          }
        }

        plot.annotate(
          merge-path(
            {
              line((-0.5, 2.5), (-0.5, calc.sqrt(3) / 2))
              arc(
                (-0.5, calc.sqrt(3) / 2),
                start: 120deg,
                stop: 60deg,
                radius: 1,
              )
              line((0.5, calc.sqrt(3) / 2), (0.5, 2.5))
            },
            fill: black.transparentize(80%),
          ),
        )
      },
    )
  }),
  "default": cetz.canvas({
    import cetz.draw: *

    rect((-1, -1), (2, 2))
  }),
)
