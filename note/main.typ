// This is the main entry point for the note of Numerical Linear Algebra
#import "template.typ": *

#show: conf
#show: ori.with(
    title: "数学",
    author: "Arshtyi",
    subject: "Mathematics",
    semester: "2026 春",
    date: datetime.today(),
    maketitle: true,
    first-line-indent: auto,
    font: font,
    makeoutline: true,
    // outline-depth: 3,
    // size: 12pt,
    // theme: "dark",
    media: "print",
    lang: "en",
    // region: "cn",
)


#set page(numbering: none)
#align(center)[
    #heading(level: 1, numbering: none, outlined: false)[前言]
]

本笔记基于模板#link("https://typst.app/universe/package/ori")[ori],使用 #link(
    "https://github.com/adobe-fonts/source-han-serif",
)[Source Han Serif] 和 #link(
    "https://github.com/IBM/plex",
)[IBM Plex] 字体,感谢所有开源贡献者!

#align(right)[
    Arshtyi\
    #link("mailto:arshtyi@foxmail.com")\
    #datetime.today().display("[year].[month].[day]")
]
#pagebreak()

#align(center)[
    #heading(level: 1, numbering: none, outlined: false)[符号说明]
]

#figure(three-line-table[
    | 符号 | 意义 | | - | - |
]) <table:notation>

#set page(numbering: "1")
#counter(page).update(1)
#show: footer
= 线性代数基础
== 线性空间与内积空间
=== 线性空间
#definition(title: "数域")[
    设$FF$是一个包含$0$和$1$的数集,如果$FF$中任意两个数的和,差,积,商(除数不为$0$)仍在$FF$中,则称$FF$为一个数域(Field).
] <def:field>

#important-box()[
    仅考虑实数域$RR$和复数域$CC$.
]
