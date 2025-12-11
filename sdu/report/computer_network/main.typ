#import "dependency.typ": *
#import "template.typ": *

#show: report.with(
    institute: "计算机科学与技术",
    course: "计算机网络",
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
])
#exp-block([
    = 硬件环境
])
#exp-block([
    = 软件环境
])
#exp-block([
    = 实验步骤与内容
])
#exp-block([
    = 结果分析与体会
])
