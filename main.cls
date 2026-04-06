% ============================================================
% 武汉科技大学成人高等教育本科毕业论文 LaTeX 模板
% ============================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{main}[2026/04/06 v1.0 WUST Adult Education Thesis Template]

% ------------------------------------------------------------
% 基础文档类
% ------------------------------------------------------------
\LoadClass[12pt,a4paper]{article}

% ------------------------------------------------------------
% 必要宏包
% ------------------------------------------------------------
\RequirePackage[UTF8,fontset=none]{ctex}
\RequirePackage[top=2.5cm,bottom=2.5cm,left=2.5cm,right=2.5cm]{geometry}
\RequirePackage{setspace}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{amsmath,amssymb}
\RequirePackage{booktabs}
\RequirePackage{hyperref}
\RequirePackage{tocloft}

% ------------------------------------------------------------
% 中文字体配置
% ------------------------------------------------------------
\setCJKmainfont{SimSun}[AutoFakeBold=true,AutoFakeSlant=true]      % 宋体 - 正文
\setCJKsansfont{SimHei}[AutoFakeBold=true]                         % 黑体 - 标题
\setCJKmonofont{FangSong}                                          % 仿宋

\newCJKfontfamily\kaishu{KaiTi}                                     % 楷体 - 摘要
\newCJKfontfamily\heiti{SimHei}                                     % 黑体命令

% ------------------------------------------------------------
% 页面设置
% ------------------------------------------------------------
\pagestyle{fancy}
\fancyhf{}
\fancyhead[C]{\small 武汉科技大学成人高等教育毕业论文}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0.4pt}

% 目录页无页眉
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyfoot[C]{\thepage}
    \renewcommand{\headrulewidth}{0pt}
}

% ------------------------------------------------------------
% 行距设置
% ------------------------------------------------------------
\onehalfspacing  % 1.5倍行距

% ------------------------------------------------------------
% 标题格式设置
% ------------------------------------------------------------

% 一级标题：黑体，三号（16pt），居中
\titleformat{\section}
    {\centering\heiti\fontsize{16pt}{24pt}\selectfont\bfseries}
    {\thesection}{1em}{}

% 二级标题：黑体，四号（14pt），左对齐
\titleformat{\subsection}
    {\heiti\fontsize{14pt}{21pt}\selectfont\bfseries}
    {\thesubsection}{1em}{}

% 三级标题：黑体，小四（12pt），左对齐
\titleformat{\subsubsection}
    {\heiti\fontsize{12pt}{18pt}\selectfont\bfseries}
    {\thesubsubsection}{1em}{}

% 标题间距
\titlespacing*{\section}{0pt}{18pt}{12pt}
\titlespacing*{\subsection}{0pt}{12pt}{6pt}
\titlespacing*{\subsubsection}{0pt}{6pt}{3pt}

% ------------------------------------------------------------
% 目录格式设置
% ------------------------------------------------------------
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsecfont}{\heiti}
\renewcommand{\cftsecpagefont}{\normalfont}

% ------------------------------------------------------------
% 段落设置
% ------------------------------------------------------------
\setlength{\parindent}{2em}      % 首行缩进2字符
\setlength{\parskip}{0pt}        % 段落间距

% ------------------------------------------------------------
% 图表标题设置
% ------------------------------------------------------------
\RequirePackage{caption}
\captionsetup{font=small,labelsep=space}

% ------------------------------------------------------------
% 列表环境设置
% ------------------------------------------------------------
\RequirePackage{enumitem}
\setlist{nosep,leftmargin=2em}

% ============================================================
% 封面信息命令定义
% ============================================================
\newcommand{\@titlezh}{}
\newcommand{\@authorname}{}
\newcommand{\@college}{}
\newcommand{\@major}{}
\newcommand{\@studentid}{}
\newcommand{\@advisor}{}
\newcommand{\@datestr}{}

\newcommand{\titlezh}[1]{\renewcommand{\@titlezh}{#1}}
\newcommand{\authorname}[1]{\renewcommand{\@authorname}{#1}}
\newcommand{\college}[1]{\renewcommand{\@college}{#1}}
\newcommand{\major}[1]{\renewcommand{\@major}{#1}}
\newcommand{\studentid}[1]{\renewcommand{\@studentid}{#1}}
\newcommand{\advisor}[1]{\renewcommand{\@advisor}{#1}}
\newcommand{\datestr}[1]{\renewcommand{\@datestr}{#1}}

% ============================================================
% 封面生成命令
% ============================================================
\newcommand{\makecover}{%
    \begin{titlepage}
        \begin{center}
            \vspace*{1cm}
            
            {\heiti\fontsize{22pt}{33pt}\selectfont 成人高等教育本科毕业论文}
            
            \vspace{2cm}
            
            {\heiti\fontsize{18pt}{27pt}\selectfont 题目：\@titlezh}
            
            \vspace{3cm}
            
            \begin{tabular}{rl}
                \heiti\fontsize{14pt}{28pt}\selectfont 学\quad 院: & 
                \fontsize{14pt}{28pt}\selectfont \@college \\[0.5em]
                \heiti\fontsize{14pt}{28pt}\selectfont 专\quad 业: & 
                \fontsize{14pt}{28pt}\selectfont \@major \\[0.5em]
                \heiti\fontsize{14pt}{28pt}\selectfont 学\quad 号: & 
                \fontsize{14pt}{28pt}\selectfont \@studentid \\[0.5em]
                \heiti\fontsize{14pt}{28pt}\selectfont 学生姓名: & 
                \fontsize{14pt}{28pt}\selectfont \@authorname \\[0.5em]
                \heiti\fontsize{14pt}{28pt}\selectfont 指导教师: & 
                \fontsize{14pt}{28pt}\selectfont \@advisor \\[0.5em]
                \heiti\fontsize{14pt}{28pt}\selectfont 日\quad 期: & 
                \fontsize{14pt}{28pt}\selectfont \@datestr \\[0.5em]
            \end{tabular}
            
            \vfill
        \end{center}
    \end{titlepage}
}

% ============================================================
% 摘要环境定义
% ============================================================
\newenvironment{abstractzh}{%
    \clearpage
    \begin{center}
        {\heiti\fontsize{16pt}{24pt}\selectfont 摘\quad 要}
    \end{center}
    \vspace{1em}
    \kaishu
}{%
    \normalfont
}

\newenvironment{abstracten}{%
    \clearpage
    \begin{center}
        {\bfseries\fontsize{16pt}{24pt}\selectfont Abstract}
    \end{center}
    \vspace{1em}
}{%
}

% 关键词命令
\newcommand{\keywordszh}[1]{%
    \vspace{1em}
    \noindent\textbf{关键词：}#1
}

\newcommand{\keywordsen}[1]{%
    \vspace{1em}
    \noindent\textbf{Keywords: }#1
}

% ============================================================
% 致谢环境
% ============================================================
\newenvironment{acknowledgement}{%
    \clearpage
    \section*{致\quad 谢}
    \addcontentsline{toc}{section}{致谢}
}{%
}

% ============================================================
% 参考文献设置
% ============================================================
\RequirePackage[sort&compress,super,square]{natbib}
\bibliographystyle{gbt7714-numerical}

% 文献引用上标
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}
