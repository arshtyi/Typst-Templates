#import "dependency.typ": *

#let conf(body) = {
    set heading(numbering: numbly("{1:一}、", default: "1.1  "))
    set math.equation(numbering: "(1)")
    // Use move to adjust outline entry position.
    set outline.entry(fill: repeat(gap: 0.15em)[#move(dy: -0.25em)[.]])
    body
}

#let font = (
    main: "IBM Plex Serif",
    mono: "IBM Plex Mono",
    cjk: "Source Han Serif SC",
    emph-cjk: "Source Han Serif SC",
    math: "New Computer Modern Math",
    math-cjk: "Source Han Serif SC",
)

#let footer(body) = {
    set page(footer: [
        *Numerical Linear Algebra*
        #h(1fr)
        #context counter(page).display(
            "- 1 -",
            both: false,
        )
    ])
    body
}
