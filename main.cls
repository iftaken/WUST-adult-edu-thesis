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
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{tocloft}

% ------------------------------------------------------------
% 中文字体配置
% ------------------------------------------------------------
\setCJKmainfont{SimSun}[AutoFakeBold=true,AutoFakeSlant=true]      % 宋体 - 正文
\setCJKsansfont{SimHei}[AutoFakeBold=true]                         % 黑体 - 标题
\setCJKmonofont{FangSong}                                          % 仿宋

\newCJKfontfamily\kaishu{KaiTi}                                     % 楷体 - 摘要、题目
\newCJKfontfamily\heiti{SimHei}[AutoFakeBold=true]                  % 黑体命令
\newCJKfontfamily\lishu{LiSu}                                       % 隶书 - 封面标题、页眉
\newCJKfontfamily\songti{SimSun}[AutoFakeBold=true]                  % 宋体命令

% ------------------------------------------------------------
% 页面设置
% ------------------------------------------------------------
\pagestyle{fancy}
\fancyhf{}
% 页眉：武汉科技大学成人高等教育毕业论文，隶书，三号（16pt）
\fancyhead[C]{\lishu\fontsize{16pt}{24pt}\selectfont 武汉科技大学成人高等教育毕业论文}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0.4pt}

% 目录页无页眉
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyfoot[C]{\thepage}
    \renewcommand{\headrulewidth}{0pt}
}

% ------------------------------------------------------------
% 行距设置：正文宋体小四，1.25倍行距
% ------------------------------------------------------------
\setstretch{1.25}

% ------------------------------------------------------------
% 标题格式设置
% ------------------------------------------------------------

% 一级标题：黑体小二（18pt），左对齐，段前段后0pt，1.5倍行距
\titleformat{\section}
    {\heiti\fontsize{18pt}{27pt}\selectfont}
    {\thesection}{1em}{}
\titlespacing*{\section}{0pt}{0pt}{0pt}

% 二级标题：黑体小三（15pt），左对齐，段前段后0pt，1.25倍行距
\titleformat{\subsection}
    {\heiti\fontsize{15pt}{18.75pt}\selectfont}
    {\thesubsection}{1em}{}
\titlespacing*{\subsection}{0pt}{0pt}{0pt}

% 三级标题：黑体四号（14pt），左对齐，段前段后0pt，1.25倍行距
\titleformat{\subsubsection}
    {\heiti\fontsize{14pt}{17.5pt}\selectfont}
    {\thesubsubsection}{1em}{}
\titlespacing*{\subsubsection}{0pt}{0pt}{0pt}

% ------------------------------------------------------------
% 目录格式设置
% ------------------------------------------------------------
% 目录标题居中，黑体三号（16pt），中间空两格
\renewcommand{\cfttoctitlefont}{\hfill\heiti\bfseries\fontsize{16pt}{24pt}\selectfont}
\renewcommand{\cftaftertoctitle}{\hfill}
\renewcommand{\contentsname}{目\quad 录}

% 目录主体：宋体小四（12pt），1.25倍行距（15pt）
\renewcommand{\cftsecfont}{\heiti\fontsize{12pt}{15pt}\selectfont}
\renewcommand{\cftsubsecfont}{\songti\fontsize{12pt}{15pt}\selectfont}
\renewcommand{\cftsubsubsecfont}{\songti\fontsize{12pt}{15pt}\selectfont}
\renewcommand{\cftsecpagefont}{\heiti\fontsize{12pt}{15pt}\selectfont}
\renewcommand{\cftsubsecpagefont}{\songti\fontsize{12pt}{15pt}\selectfont}
\renewcommand{\cftsubsubsecpagefont}{\songti\fontsize{12pt}{15pt}\selectfont}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}

% 目录条目间距（1.25倍行距）
\setlength{\cftbeforesecskip}{3pt}
\setlength{\cftbeforesubsecskip}{3pt}
\setlength{\cftbeforesubsubsecskip}{3pt}

% ------------------------------------------------------------
% 段落设置
% ------------------------------------------------------------
\setlength{\parindent}{2em}      % 首行缩进2字符
\setlength{\parskip}{0pt}        % 段落间距

% ------------------------------------------------------------
% 图表标题设置：表名、图名宋体五号（10.5pt）
% ------------------------------------------------------------
\RequirePackage{caption}
\captionsetup{labelsep=space}

% 定义宋体五号字体用于图表标题
\DeclareCaptionFont{wustcap}{\songti\fontsize{10.5pt}{10.5pt}\selectfont}
\captionsetup{font=wustcap,skip=6pt}

% 表格统一使用三线表
\RequirePackage{ctable}
\setlength{\aboverulesep}{0pt}
\setlength{\belowrulesep}{0pt}
\setlength{\cmidrulesep}{0pt}

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
            % ============================================================
            % 1. 武汉科技大学logo距上边距: 3cm
            % ============================================================
            \vspace*{3cm}
            
            % Logo图片: 191.25pt x 54.7pt
            \includegraphics[width=191.25pt,height=54.7pt,keepaspectratio]{figture/logo.png}
            
            % ============================================================
            % 2. logo与"成人高等教育本科毕业论文"间距: 1cm
            % ============================================================
            \vspace{1cm}
            
            % "成人高等教育本科毕业论文": 隶书 39pt, 居中
            {\lishu\fontsize{37pt}{37pt}\selectfont 成人高等教育本科毕业论文}
            
            % ============================================================
            % 3. "成人高等教育本科毕业论文"与题目间距: 2cm
            % ============================================================
            \vspace{2cm}
            
            % ============================================================
            % 第4段: "题目：xxxx"
            % 楷体 26pt, 加粗, 居中, "题目："无下划线，题目内容有下划线
            % ============================================================
            {\kaishu\fontsize{26pt}{39pt}\selectfont\bfseries 
            题目：\uline{天津通和饲料公司销售人员}}\\[0.5em]
            {\kaishu\fontsize{26pt}{39pt}\selectfont\bfseries 
            \phantom{题目：}\uline{培训问题及对策研究}}
            
            % ============================================================
            % 4. 题目与表格间距: 4.6cm
            % ============================================================
            \vspace{4.6cm}
        \end{center}  % 结束居中环境，表格左对齐
        
        % ============================================================
        % 5. 表格
        % 左列: 1.12cm x 6.22cm (高x宽), 右对齐
        % 右列: 1.12cm x 6.67cm (高x宽), 左对齐
        % 字号: 14pt
        % ============================================================
        \setlength{\tabcolsep}{0pt}
        \renewcommand{\arraystretch}{0}  % 取消默认行距
        \fontsize{14pt}{14pt}\selectfont  % 4号字，单倍行距
        \noindent  % 左对齐
        \begin{tabular}{>{\raggedleft\arraybackslash}p{6.22cm}>{\centering\arraybackslash}p{6.67cm}}
            \rule{0pt}{1.12cm}\vspace{0.4cm}\songti\bfseries 学\qquad 院: \vspace{-0.4cm} & 
            \rule{0pt}{1.12cm}\vspace{0.4cm}\songti\hspace{0.3em}\@college \vspace{-0.4cm} \\
            \cline{2-2}
            \rule{0pt}{1.12cm}\vspace{0.4cm}\songti\bfseries 专\qquad 业: \vspace{-0.4cm} & 
            \rule{0pt}{1.12cm}\vspace{0.4cm}\songti\hspace{0.3em}\@major \vspace{-0.4cm} \\
            \cline{2-2}
            \rule{0pt}{1.12cm}\vspace{0.4cm}\songti\bfseries 学\qquad 号: \vspace{-0.4cm} & 
            \rule{0pt}{1.12cm}\vspace{0.4cm}\songti\hspace{0.3em}\@studentid \vspace{-0.4cm} \\
            \cline{2-2}
            \rule{0pt}{1.12cm}\vspace{0.4cm}\songti\bfseries 学生姓名: \vspace{-0.4cm} & 
            \rule{0pt}{1.12cm}\vspace{0.4cm}\songti\hspace{0.3em}\@authorname \vspace{-0.4cm} \\
            \cline{2-2}
            \rule{0pt}{1.12cm}\vspace{0.4cm}\songti\bfseries 指导教师: \vspace{-0.4cm} & 
            \rule{0pt}{1.12cm}\vspace{0.4cm}\songti\hspace{0.3em}\@advisor \vspace{-0.4cm} \\
            \cline{2-2}
            \rule{0pt}{1.12cm}\vspace{0.4cm}\songti\bfseries 日\qquad 期: \vspace{-0.4cm} & 
            \rule{0pt}{1.12cm}\vspace{0.4cm}\songti\hspace{0.3em}\@datestr \vspace{-0.4cm} \\
            \cline{2-2}
        \end{tabular}
    \end{titlepage}
}

% ============================================================
% 摘要环境定义
% ============================================================
\newenvironment{abstractzh}{%
    \clearpage
    \begin{center}
        {\songti\bfseries\fontsize{16pt}{24pt}\selectfont 摘\quad 要}
    \end{center}
    \vspace{1em}
    \songti\fontsize{12pt}{15pt}\selectfont  % 宋体小四（12pt），1.25倍行距
}{%
    \normalfont
}

\newenvironment{abstracten}{%
    \clearpage
    \begin{center}
        {\bfseries\fontsize{16pt}{24pt}\selectfont Abstract}
    \end{center}
    \vspace{1em}
    \fontfamily{ptm}\fontsize{12pt}{15pt}\selectfont  % Times New Roman，小四（12pt），1.25倍行距
}{%
    \normalfont
}

% 关键词命令：黑体四号（14pt）
\newcommand{\keywordszh}[1]{%
    \vspace{1em}
    \noindent{\heiti\fontsize{14pt}{21pt}\selectfont 关键词：}#1
}

\newcommand{\keywordsen}[1]{%
    \vspace{1em}
    \noindent{\bfseries Keywords: }#1
}

% ============================================================
% 致谢环境
% ============================================================
\newenvironment{acknowledgement}{%
    \clearpage
    \begin{center}
        {\heiti\fontsize{18pt}{27pt}\selectfont 致谢}
    \end{center}
    \vspace{1em}
    \addcontentsline{toc}{section}{致谢}
}{%
}

% ============================================================
% 参考文献设置
% ============================================================
\RequirePackage[sort&compress,super,square]{natbib}
\RequirePackage{ulem}  % 更好的下划线支持
\RequirePackage{array}  % 表格增强
\RequirePackage{makecell}  % 单元格内换行

\bibliographystyle{gbt7714-numerical}

% 文献引用上标
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}

% ------------------------------------------------------------
% 参考文献标题居中设置
% ------------------------------------------------------------
\renewcommand{\bibsection}{%
    \clearpage
    \begin{center}
        {\heiti\fontsize{18pt}{27pt}\selectfont 参考文献}
    \end{center}
    \vspace{1em}
}
