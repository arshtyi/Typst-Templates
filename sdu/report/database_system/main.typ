#import "dependency.typ": *
#import "template.typ": *

#show: report.with(
    institute: "计算机科学与技术",
    course: "数据库系统",
    student-id: "202512111715",
    student-name: "Arshtyi",
    date: datetime.today(),
    lab-title: "实验0test测试-0",
)

#show figure.where(kind: "image"): it => {
    set image(width: 67%)
    it
}
#exp-block([
    = 实验目的
])
#exp-block([
    = 实验软件和硬件环境
    // #underline(")
])
#exp-block([
    = 实验原理与方法
])
#exp-block([
    = 实验步骤
])
#exp-block([
    = 结论分析与体会
])
#exp-block([
    = 实验过程中遇到和出现的问题及如何解决和处理
])
