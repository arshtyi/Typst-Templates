#import "dependency.typ": *
#import "template.typ": *

#show: report.with(
    course: "区块链原理",
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
    = 原理分析与步骤
])
#exp-block([
    = 结论分析与体会
])
#appendix([
])
