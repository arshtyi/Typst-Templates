#import "dependency.typ": *
#import "template.typ": *

#show: report.with(
    institute: "计算机科学与技术",
    course: "计算机组成与设计",
    student-id: "202512111715",
    student-name: "Arshtyi",
    date: datetime.today(),
    lab-title: "实验0test测试-0",
    exp-time: "2",
)

#show figure.where(kind: "image"): it => {
    set image(width: 67%)
    it
}

#exp-block([
    = 实验目的
    // #v(10em)
])
#exp-block([
    = 实验软件和硬件环境
    - 软件环境
    - 硬件环境
    // #v(15em)
])
#exp-block()[
    = 实验原理和方法
]
#exp-block()[
    = 实验步骤
]
