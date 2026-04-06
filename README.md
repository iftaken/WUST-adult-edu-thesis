# 武汉科技大学成人高等教育本科毕业论文 LaTeX 模板

> 由 Word2LaTeX Pipeline 自动生成

## 模板信息

- **学校**: 武汉科技大学
- **类型**: 成人高等教育本科毕业论文
- **源文件**: `examples/exp1.docx` (Word模板)
- **生成时间**: 2026-04-06

## 格式要求

| 项目 | 设置 |
|------|------|
| 页面大小 | A4 (210mm × 297mm) |
| 页边距 | 上下左右 2.5cm |
| 正文字体 | 宋体 (SimSun) 12pt |
| 正文字号 | 小四 |
| 行距 | 1.5倍 |
| 一级标题 | 黑体 16pt 居中 |
| 二级标题 | 黑体 14pt 左对齐 |
| 三级标题 | 黑体 12pt 左对齐 |

## 编译方法

### 使用 Tectonic（推荐）

```bash
tectonic main.tex
```

### 使用 latexmk

```bash
latexmk -xelatex main.tex
```

## 字体依赖

请确保系统已安装以下中文字体：

- **SimSun** (宋体) - 正文
- **SimHei** (黑体) - 标题
- **KaiTi** (楷体) - 摘要
- **FangSong** (仿宋) - 等宽/引用

### 字体安装

```bash
# 下载字体
curl -o ~/.fonts/SIMSUN.TTC https://cos.huimengxinhe.com/font/SIMSUN.TTC
curl -o ~/.fonts/SIMHEI.TTF https://cos.huimengxinhe.com/font/SIMHEI.TTF
curl -o ~/.fonts/SIMKAI.TTF https://cos.huimengxinhe.com/font/SIMKAI.TTF
curl -o ~/.fonts/SIMFANG.TTF https://cos.huimengxinhe.com/font/SIMFANG.TTF

# 更新字体缓存
fc-cache -fv ~/.fonts
```

## 文件结构

```
.
├── main.cls              # 文档类文件（模板核心）
├── main.tex              # 主文件
├── references.bib        # 参考文献数据库
├── main.pdf              # 编译后的PDF
├── chapters/             # 章节文件夹
│   ├── chapter1.tex      # 第一章：绪论
│   ├── chapter2.tex      # 第二章：相关理论
│   ├── chapter3.tex      # 第三章：现状分析
│   ├── chapter4.tex      # 第四章：问题分析
│   ├── chapter5.tex      # 第五章：对策建议
│   ├── conclusion.tex    # 结论
│   ├── abstract.tex      # 摘要
│   ├── acknowledgement.tex # 致谢
│   └── appendix.tex      # 附录
└── README.md             # 本文件
```

## 使用方法

### 1. 填写论文信息

编辑 `main.tex` 中的论文基本信息：

```latex
\titlezh{你的论文题目}
\authorname{你的姓名}
\college{XXX学院}
\major{你的专业}
\studentid{你的学号}
\advisor{指导教师姓名}
\datestr{2025年X月}
```

### 2. 编写各章节内容

在 `chapters/` 目录下的对应文件中编写各章节内容。

### 3. 添加参考文献

在 `references.bib` 中添加参考文献条目，在正文中使用 `\cite{key}` 引用。

### 4. 编译生成 PDF

```bash
tectonic main.tex
```

## 主要功能

### 封面

自动生成符合学校要求的封面，包括：
- 论文类型
- 题目
- 学院、专业、学号、姓名、指导教师、日期

### 摘要

支持中英文摘要，自动使用楷体排版中文摘要。

### 目录

自动生成目录，包含页码和超链接。

### 页眉页脚

- 页眉显示"武汉科技大学成人高等教育毕业论文"
- 页脚显示页码

### 标题样式

- 一级标题：黑体，三号（16pt），居中
- 二级标题：黑体，四号（14pt），左对齐
- 三级标题：黑体，小四（12pt），左对齐

### 参考文献

支持 GB/T 7714-2015 格式的参考文献引用。

### 致谢

提供致谢环境，自动添加到目录。

## 示例

本模板包含一个完整的示例论文《天津通和饲料公司销售人员培训问题及对策研究》，涵盖：
- 封面
- 中英文摘要
- 目录
- 绪论
- 相关理论
- 现状分析
- 问题分析
- 对策建议
- 结论
- 参考文献
- 致谢

## 注意事项

1. **字体**: 确保系统已安装所需中文字体，否则编译会失败
2. **编译**: 使用 XeLaTeX 或 Tectonic 编译以支持中文
3. **引用**: 修改章节后需要多次编译以更新交叉引用
4. **参考文献**: 添加新参考文献后需要运行 BibTeX

## 模板来源

基于 [xinhe-thesis](https://github.com/XinhePaper/xinhe-thesis) 修改

## 许可证

MIT License
