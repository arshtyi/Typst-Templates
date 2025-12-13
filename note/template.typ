#import "dependency.typ": *

#let conf(body) = {
    // Use move to adjust outline entry position
    set outline.entry(fill: repeat(gap: 0.15em)[#move(dy: -0.25em)[.]])
    set heading(
        numbering: numbly("Chapter {1}. ", "{1}.{2}. ", "{1}.{2}.{3}. ", ""),
    )
    // Math equation numbering.Ref:https://guide.typst.dev/FAQ/math-equation
    let ct = counter("eq")
    set math.equation(numbering: it => ct.display("(1-1.a)"))
    show heading.where(level: 1): it => it + ct.step() + ct.step(level: 2)
    show math.equation.where(block: true): it => {
        it
        if it.numbering != none {
            if ct.get().len() == 2 {
                ct.step(level: 2)
            }
        }
    }
    let eq_nonum(body) = {
        set math.equation(numbering: none)
        body
    }
    let subeqs(..args) = {
        for eq in args.pos() {
            ct.step(level: 3)
            eq
        }
        ct.step(level: 2)
    }
    // Set ordered list style
    set enum(numbering: "1)")
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
        *Mathematics*
        #h(1fr)
        #context counter(page).display(
            "- 1 -",
            both: false,
        )
    ])
    body
}
