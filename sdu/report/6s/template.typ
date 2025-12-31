#import "dependency.typ": *

#let font = (
    main: "Source Han Serif SC",
    mono: "IBM Plex Mono",
    cjk: "Noto Serif CJK SC",
)

#let 字号 = (
    初号: 42pt,
    小初: 36pt,
    一号: 26pt,
    小一: 24pt,
    二号: 22pt,
    小二: 18pt,
    三号: 16pt,
    小三: 15pt,
    四号: 14pt,
    中四: 13pt,
    小四: 12pt,
    五号: 10.5pt,
    小五: 9pt,
    六号: 7.5pt,
    小六: 6.5pt,
    七号: 5.5pt,
    小七: 5pt,
)

#let sixs(
    title: "6s实践",
    author: "Arshtyi",
    id: "114514",
    contact-way: "arshtyi@foxmail.com",
    e-mail: "arshtyi@foxmail.com",
    date: datetime.today(),
    body,
) = {
    let bg-color = rgb("#ffffff")
    let text-color = rgb("#000000")
    let page-margin = (x: 35pt, y: 35pt)
    let underln(width, body) = box(align(center, body), width: width, stroke: (bottom: 0.5pt), outset: (bottom: 2pt))
    set document(title: title, author: if type(author) == str { author } else { () }, date: date)
    set text(
        font: ("Source Han Serif SC", "Fira Sans"),
        size: 10.5pt,
        lang: "zh",
        region: "cn",
        // leading: 1.6
    )
    set page(
        paper: "a4",
        header: context {
            if counter(page).get().first() == 1 [
                #set text(0.9em)
                #stack(
                    spacing: 0.2em,
                    grid(
                        columns: (1fr, 1fr),
                        align(left, "资产与实验室管理处"), align(right, "（实验室 6S 课程报告）"),
                    ),
                    v(0.3em),
                    line(length: 100%, stroke: 1pt + text-color),
                    // v(.15em),
                    // line(length: 100%, stroke: .5pt + text-color),
                )
            ]
        },
        fill: bg-color,
        // numbering: "1",
        margin: page-margin,
    )
    align(center)[
        #v(20%)
        #text("实验室 6S 精益管理与实践(劳育)课程报告", size: 字号.二号, weight: "bold")
        #v(20%)
        #set text(字号.四号)
        #text("报告题目:" + underln(15em, title))
        #v(1em)
        #text("学生姓名:" + underln(15em, author))
        #v(1em)
        #text("学生学号:" + underln(15em, id))
        #v(1em)
        #text("联系方式:" + underln(15em, contact-way))
    ]
    align(center + bottom)[
        #text(date.display("[year] 年 [month] 月"), size: 字号.四号)
    ]
    counter(page).update(0)
    pagebreak(weak: true)
    set page(numbering: "1", header: {})
    [
        #set par(justify: true)
        #set text(size: 字号.小四)
        #table(
            inset: 0.5em,
            align: left + horizon,
            columns: (auto, 1fr, auto, auto, 1fr),
            table.cell(rowspan: 2)[报告题目],
            table.cell(rowspan: 2)[ #title ],
            table.cell(rowspan: 2)[报告撰写人],
            [姓名],
            [ #author ],
            [E-mail], [ #e-mail ],
        )
    ]
    set heading(
        numbering: numbly(
            "{1:一}、",
            "{2:1}.",
            "({3:1})", // here, we only want the 3rd level
        ),
    )
    body
}

#let text-block(content) = {
    v(0em, weak: true)
    set par(first-line-indent: (amount: 2em, all: true)) // Use this to make sure all paragraphs are indented.Ref:https://github.com/typst/typst/pull/5768
    block(
        width: 100%,
        inset: 1em,
        stroke: 1pt,
        breakable: true,
        content + v(1em),
    )
}
