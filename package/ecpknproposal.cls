%%%%%%%%%%%%%%%%% 模板声明 %%%%%%%%%%%%%%%%% 
\NeedsTeXFormat{LaTeX2e}[2007/10/19]
\typeout{Document Class `ecpknproposal' v1.0 by LCS (2023/11/14), adapted from `buaascseproposal' v0.1 by ZKL on Github}

%%%%%%%%%%%%%%%%% 模板选项 %%%%%%%%%%%%%%%%% 
\newif\ifbuaaatbeginterm\buaaatbegintermfalse
\newif\ifbuaaatmidterm\buaaatmidtermfalse
\newif\ifbuaaatreview\buaaatreviewfalse
\newif\ifbuaaatcolor\buaaatcolorfalse

\DeclareOption{beginterm}{\buaaatbegintermtrue}
\DeclareOption{midterm}{\buaaatmidtermtrue}
\DeclareOption{review}{\buaaatreviewtrue}
\DeclareOption{color}{\buaaatcolortrue}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax
% 引用ctexart及基本设置
\LoadClass[a4paper,UTF8,titlepage,zihao=-4,AutoFakeBold]{ctexart}

%%%%%%%%%% 宏包 %%%%%%%%%%
% 全局通用宏包
\RequirePackage{ifthen}

% 数学相关和字体设置
\RequirePackage{amsmath,amssymb,amsfonts,mathrsfs,bm}
% \RequirePackage{mathptmx}
\RequirePackage[amsmath,thmmarks,hyperref]{ntheorem}
% \RequirePackage{txfonts}
\RequirePackage{anyfontsize}

\setmainfont{Times New Roman}
\let\songti\relax
\let\heiti\relax

% TODO: (USER)请使用者将本部分的字体按照本地环境的使用情况进行修改
\setCJKfamilyfont{zhsong}[Path=../font/, AutoFakeBold = {4.17}]{SimSun}
\setCJKfamilyfont{zhhei}[Path=../font/,AutoFakeBold = {3.17}]{SimHei}
\setCJKfamilyfont{hwxingkai}[Path=../font/,AutoFakeBold={3}]{STXINGKA}
\setCJKfamilyfont{kaishu}[Path=../font/,AutoFakeBold={3}]{simkai}
% \setCJKfamilyfont{zhsong}[AutoFakeBold = {4.17}]{}
% \setCJKfamilyfont{zhhei}[AutoFakeBold = {3.17}]{}
% \setCJKfamilyfont{hwxingkai}[AutoFakeBold={3}]{../font/STXINGKA.TTF}
% \setCJKfamilyfont{kaishu}[AutoFakeBold={3}]{../font/simkai.ttf}

\newcommand{\songti}{\CJKfamily{zhsong}}
\newcommand{\heiti}{\CJKfamily{zhhei}}
\newcommand{\hwxingkai}{\CJKfamily{hwxingkai}}
\newcommand{\kaiti}{\CJKfamily{kaishu}}

\renewcommand{\textbf}[1]{{\bfseries\songti #1}}

% 预定义的字体大小，以后用得着
\newcommand{\xiaochuhao}{\fontsize{32pt}{\baselineskip}\selectfont}
\newcommand{\yihao}{\fontsize{26pt}{39pt}\selectfont}
\newcommand{\xiaoyi}{\fontsize{24pt}{36pt}\selectfont}
\newcommand{\erhao}{\fontsize{22pt}{33pt}\selectfont}
\newcommand{\xiaoer}{\fontsize{18pt}{27pt}\selectfont}
\newcommand{\sanhao}{\fontsize{16pt}{24pt}\selectfont}
\newcommand{\xiaosan}{\fontsize{15pt}{22.5pt}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{21pt}\selectfont}
\newcommand{\xiaosi}{\fontsize{12pt}{18pt}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{15.75pt}\selectfont}
\newcommand{\xiaowu}{\fontsize{9pt}{13.5pt}\selectfont}
\newcommand{\liuhao}{\fontsize{7.5pt}{11.25pt}\selectfont}

% 只用于电子版
\RequirePackage{color}
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}
\definecolor{rowgray}{gray}{0.5}


%%%%%%%%%% 学生信息 %%%%%%%%%%
% 学校名称
\gdef\buaaatuniversity{北京航空航天大学}
\newcommand{\university}[1]{%
    \gdef\buaaatuniversity{#1}
}
% 学院
\gdef\buaaatschool{中法工程师学院/国际通用工程学院}
\newcommand{\school}[1]{%
    \gdef\buaaatschool{#1}
}
% 专业
\gdef\buaaatmajor{系统工程}
\newcommand{\major}[1]{%
    \gdef\buaaatmajor{#1}
}
% 专业
\gdef\buaaatauthorname{作者姓名}
\newcommand{\authorname}[1]{%
    \gdef\buaaatauthorname{#1}
}
% 专业
\gdef\buaaattutor{导师}
\newcommand{\tutor}[1]{%
    \gdef\buaaattutor{#1}
}
% 题目
\gdef\buaaatthesistitle{论文题目}
\newcommand{\thesistilte}[1]{%
    \gdef\buaaatthesistitle{#1}
}
% 学号
\gdef\buaaatstuno{学生学号}
\newcommand{\stuno}[1]{%
    \gdef\buaaatstuno{#1}
}
% 中文关键词
\gdef\buaaatckeyword{中文关键词}
\newcommand{\ckeyword}[1]{%
    \gdef\buaaatckeyword{#1}
}
% 英文关键词
\gdef\buaaatekeyword{English key words}
\newcommand{\ekeyword}[1]{%
    \gdef\buaaatekeyword{#1}
}


\gdef\buaaatdegree{硕士}

\ifbuaaatbeginterm
    \gdef\buaaatdoctype{开题报告}
\else
    \gdef\buaaatdoctype{报告}
\fi

\ifbuaaatmidterm
    \gdef\buaaatdoctype{中期报告}
\fi

\ifbuaaatreview
    \gdef\buaaatdoctype{文献综述}
\fi

%%%%%%%%%% 页面设置 %%%%%%%%%%
% 页面边距
\RequirePackage{geometry}
\newgeometry{
    top=25.4mm, bottom=25.4mm, left=31.7mm, right=31.7mm,
    headsep=5mm, headheight=10mm, footskip=10mm,
}
\savegeometry{a4pagesize}

\newgeometry{
    top=25mm, bottom=25mm, left=30mm, right=30mm,
    headsep=5mm, headheight=10mm, footskip=10mm,
}
\savegeometry{custompagesize}

\loadgeometry{a4pagesize}

%%%%%%%%%% 其他间距 %%%%%%%%%%
\renewcommand{\baselinestretch}{1.625}
\setlength{\parindent}{2em}
\setlength{\floatsep}{3pt plus 3pt minus 2pt}      % 图形之间或图形与正文之间的距离
\setlength{\abovecaptionskip}{10pt plus 1pt minus 1pt} % 图形中的图与标题之间的距离
\setlength{\belowcaptionskip}{3pt plus 1pt minus 2pt} % 表格中的表与标题之间的距离

% 页眉页脚
\RequirePackage{fancyhdr}
\newif\iff@nch@compatViii
\let\f@nch@gbl\relax
\let\f@nch@gbl\global
    \f@nch@compatViiitrue

\fancypagestyle{frontmatter}{
    \fancyhead{}
    \fancyfoot{}
    \pagenumbering{roman}

    \fancyhead[L]{\zihao{-5}\kaishu
        \buaaatthesistitle \vspace{1.5mm}
    }
    \fancyfoot[C]{
        \hspace{1.5mm}
        \kaishu\zihao{-5}\buaaatuniversity\buaaatschool\buaaatdegree 学位论文\buaaatdoctype
        \hfill\hfill
        \songti\zihao{-5}$\cdot$\quad\thepage\quad$\cdot$
        \hspace{1.5mm}
    }

    \renewcommand{\footrulewidth}{0.4bp}
    \renewcommand{\headrulewidth}{0.5bp} % 页眉线宽度
}

\fancypagestyle{mainmatter}{
    \fancyhead{}
    \fancyfoot{}
    \setcounter{page}{1}
    \pagenumbering{arabic}

    \fancyhead[L]{\zihao{-5}\kaishu
        \buaaatthesistitle \vspace{1.5mm}
    }
    \fancyfoot[C]{
        \hspace{1.5mm}
        \kaishu\zihao{-5}\buaaatuniversity\buaaatschool\buaaatdegree 学位论文\buaaatdoctype
        \hfill\hfill
        \songti\zihao{-5}$\cdot$\quad\thepage\quad$\cdot$
        \hspace{1.5mm}
    }

    \renewcommand{\footrulewidth}{0.4bp}
    \renewcommand{\headrulewidth}{0.5bp} % 页眉线宽度
}

\fancypagestyle{plain}{
    \pagestyle{fancy}
}


%%%%%%%%%% 封面 %%%%%%%%%%
\RequirePackage{booktabs}
\RequirePackage{titling}
\renewcommand*\maketitle{
    \begin{titlepage}
        \linespread{1.2}
        \vspace*{\fill}
        \begin{center}
            {\xiaoer \bf \kaishu \buaaatuniversity \\ \buaaatschool \par}
            \vspace{3cm}
            {\yihao \bf \heiti \buaaatdegree 研究生学位论文 \par \buaaatdoctype \par} 
            \vspace{4cm} 
            {\xiaosan \kaishu 
            \begin{tabular}{rp{10cm}}
            {\kaishu \bfseries 论文题目}： & \buaaatthesistitle \\ \cline{2-2}
            {\kaishu \bfseries 专~~~~~~~~业}： & \makecell[c]{\buaaatmajor} \\ \cline{2-2}
            {\kaishu \bfseries 研~~究~~生}： & \makecell[c]{\buaaatauthorname} \\ \cline{2-2}
            {\kaishu \bfseries 学~~~~~~~~号}： & \makecell[c]{\buaaatstuno} \\ \cline{2-2}
            {\kaishu \bfseries 指导教师}： & \makecell[c]{\buaaattutor} \\ \cline{2-2}
            \end{tabular} \par}
            \vspace{3cm} 
            {\sanhao \heiti \buaaatuniversity \buaaatschool \par 
            \heiti \@date \par }
        \end{center}
        \vspace{\fill}
    \end{titlepage}
}

%%%%%%%%%% cross reference %%%%%%%%%%
\RequirePackage{hyperref}
\ifbuaaatcolor
    \hypersetup{colorlinks, linkcolor=blue}
\else
    \hypersetup{hidelinks}
\fi
\hypersetup{
    bookmarksnumbered,
    bookmarksopen,
    pdftitle={\buaaatthesistitle},
    pdfauthor={\buaaatauthorname},
    pdfsubject={\buaaatuniversity \buaaatschool \buaaatdegree 研究生学位论文\buaaatdoctype},
    pdfcreator={LaTeXed~By~BUAA},
}

\RequirePackage{bookmark}

%%%%%%%%%% 参考文献 %%%%%%%%%%
\RequirePackage[sort,compress]{natbib}
\bibpunct{[}{]}{,}{n}{}{}
\setlength{\bibsep}{0pt}
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}

\RequirePackage{gbt7714}
\citestyle{numerical}


%%%%%%%%%% 交叉引用 %%%%%%%%%%
\RequirePackage[noabbrev,capitalize,nameinlink]{cleveref}
\crefname{equation}{式}{式}
\crefname{figure}{图}{图}
\crefname{table}{表}{表}
\crefname{page}{页}{页}
\crefname{chapter}{章}{章}
\crefname{section}{节}{节}
\crefname{appendix}{附录}{附录}
\crefname{theorem}{定理}{定理}
\crefname{lemma}{引理}{引理}
\crefname{corollary}{推论}{推论}
\crefname{proposition}{命题}{命题}
\crefname{definition}{定义}{定义}
\crefname{example}{例}{例}
\crefname{algorithm}{算法}{算法}
\crefname{listing}{列表}{列表}
\crefname{line}{行}{行}

\crefformat{chapter}{#2第#1章#3}
\crefformat{section}{#2#1#3}
\crefformat{subsection}{#2第#1节#3}
\crefformat{subsubsection}{#2第#1节#3}

\crefrangeformat{chapter}{#3第#1章#4至#5第#2章#6}
\crefrangeformat{section}{#3第#1节#4至#5第#2节#6}
\crefrangeformat{subsection}{#3第#1节#4至#5第#2节#6}
\crefrangeformat{subsubsection}{#3第#1节#4至#5第#2节#6}

\crefmultiformat{chapter}{#2第#1章#3}{和#2第#1章#3}{，#2第#1章#3}{和#2第#1章#3}
\crefmultiformat{section}{#2第#1节#3}{和#2第#1节#3}{，#2第#1节#3}{和#2第#1节#3}
\crefmultiformat{subsection}{#2第#1节#3}{和#2第#1节#3}{，#2第#1节#3}{和#2第#1节#3}
\crefmultiformat{subsubsection}{#2第#1节#3}{和#2第#1节#3}{，#2第#1节#3}{和#2第#1节#3}

\newcommand{\crefpairconjunction}{~和~}
\newcommand{\crefmiddleconjunction}{, }
\newcommand{\creflastconjunction}{~和~}
\newcommand{\crefpairgroupconjunction}{~和~}
\newcommand{\crefmiddlegroupconjunction}{, }
\newcommand{\creflastgroupconjunction}{~和~}
\newcommand{\crefrangeconjunction}{~至~}


%%%%%%%%%% 标题 %%%%%%%%%%
\newcommand{\contentname}{目~~~~~~~~录}
\newcommand{\figurecontentname}{图~~~~~~~~目}
\newcommand{\tablecontentname}{表~~~~~~~~目}

\renewcommand{\contentsname}{\centerline{\contentname}}
\renewcommand{\listfigurename}{\centerline{\figurecontentname}}
\renewcommand{\listtablename}{\centerline{\tablecontentname}}
\renewcommand{\bibname}{主要参考文献}
\renewcommand{\refname}{\hspace*{\fill} \bibname \hspace*{\fill}}

\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}

% 格式
\ctexset{
    section={
        format={\zihao{3}\heiti\bfseries},
        aftername={\quad},
        beforeskip={.5\baselineskip},
        afterskip={.25\baselineskip},
    },
    subsection={
        format={\zihao{-3}\heiti},
        aftername={\quad},
        beforeskip={.25\baselineskip},
        afterskip={.25\baselineskip},
    },
    subsubsection={
        format={\zihao{4}\heiti},
        aftername={\quad},
        beforeskip={.25\baselineskip},
        afterskip={.25\baselineskip},
    },
    section/break={},
    paragraph={
        % format={\bfseries \zihao{-4}\songti},
        beforeskip={.0\baselineskip},
        indent={2em} 
    }
}


%%%%%%%%% 公式 %%%%%%%%%%
\newcommand{\splitatcommas}[1]{%
  \begingroup
  \begingroup\lccode`~=`, \lowercase{\endgroup
    \edef~{\mathchar\the\mathcode`, \penalty0 \noexpand\hspace{0pt plus 1em}}%
  }\mathcode`,="8000 #1%
  \endgroup
}

%%%%%%%%% 公式 %%%%%%%%%%
\newcommand{\bfemph}[1]{\textbf{#1}}
% \renewcommand{\emph}[1]{\bfemph{#1}}

% 取消强制换页
% \renewcommand{\clearpage}{\par}

%%%%%%%%%% 目录 %%%%%%%%%%
\RequirePackage{titletoc}

% 表目录图目录的格式设置
% 表目录与图目录数字前增加“表”与“图”字，并且使目录行间距与section行间距一致
\titlecontents{figure}[0pt]{\vspace{0.15\baselineskip}\songti\zihao{-4}}{\makebox[3em][l]{图~\thecontentslabel\quad}}{}
    {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}[\vspace{0.15\baselineskip}]
\titlecontents{table}[0pt]{\vspace{0.15\baselineskip}\songti\zihao{-4}}{\makebox[3em][l]{表~\thecontentslabel\quad}}{}
    {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}[\vspace{0.15\baselineskip}]

\DeclareMathOperator*{\Bigcdot}{\scalerel*{\cdot}{\bigodot}}
\titlecontents{section}[0em]{\bfseries \songti\zihao{-4}}{\thecontentslabel\quad}{}
    {\hspace{.5em}\titlerule*[5pt]{$\boldsymbol{\cdot}$}{\zihao{-4}\contentspage}}[\vspace{0.15\baselineskip}]
\titlecontents{subsection}[2em]{\vspace{-0.2\baselineskip}\songti\zihao{-4}}{\thecontentslabel\quad}{}
    {\hspace{.5em}\titlerule*[4pt]{$\cdot$}{\zihao{-4}\contentspage}}[\vspace{0.15\baselineskip}]
\titlecontents{subsubsection}[4em]{\vspace{-0.2\baselineskip}\songti\zihao{-4}}{\thecontentslabel\quad}{}
    {\hspace{.5em}\titlerule*[4pt]{$\cdot$}{\zihao{-4}\contentspage}}[\vspace{0.15\baselineskip}]


%%%%%%%%%% 图 %%%%%%%%%%
\RequirePackage{graphicx}
\graphicspath{{./figs/}{./fig/}{./figures/}{./figure/}}
\RequirePackage{pifont}  % “秘级”后的五角星
\RequirePackage{overpic}
\RequirePackage{subfigure}
\RequirePackage{booktabs}
\RequirePackage{caption}
\DeclareCaptionFont{kai}{\kaishu}
\captionsetup[table]{labelsep=quad, font=kai}
\captionsetup[figure]{labelsep=quad, font=kai}
\captionsetup[figure]{
  position=bottom, margin=0mm, font=kai,
  aboveskip=6pt, belowskip=0pt, justification=centerlast}
\captionsetup[table]{
  position=top, margin=0mm, font=kai,
  aboveskip=0pt, belowskip=0pt, justification=centerlast}

%%%%%%%%%% 表 %%%%%%%%%%
\RequirePackage{makecell}
\RequirePackage{colortbl}
\RequirePackage{enumerate}
\RequirePackage{ulem}

% 长表格
\RequirePackage{longtable}

% 表格中的行合并
\RequirePackage{multirow}

% 重定义table/tabular/tabularx环境，使表格内为5号字
\let\oldtable\table
\let\endoldtable\endtable
\renewenvironment{table}[1][!ht]
{\renewcommand{\arraystretch}{1}
\oldtable[#1] \zihao{5}}
{\renewcommand{\arraystretch}{1}
\endoldtable}

% \let\oldtabular\tabular
% \let\endoldtabular\endtabular
% \renewenvironment{tabular}[1][h!]
% {\renewcommand{\arraystretch}{1.5}
% \oldtabular[#1] \zihao{5}}
% {\renewcommand{\arraystretch}{1}
% \endoldtabular}

\RequirePackage{tabularx}
% \let\oldtabularx\tabularx
% \let\endoldtabularx\endtabularx
% \renewenvironment{tabularx}[2]
% {\renewcommand{\arraystretch}{1.5}
% \zihao{5}\oldtabularx{#1}{#2}}
% {\renewcommand{\arraystretch}{1}
% \endoldtabularx}

%%%%%%%%%% 列表 %%%%%%%%%%
\RequirePackage{enumitem}
\setlist{noitemsep}
\setlist[1,2]{labelindent=\parindent}
\setlist[enumerate,1]{wide, label=（\arabic*）, labelsep=0pt, noitemsep}
\setlist[enumerate,2]{label=\arabic*）}
\setlist{
    topsep=0pt,
    itemsep=0pt,
    partopsep=0pt,
    parsep=\parskip,
}

%%%%%%%%%% 交叉引用 %%%%%%%%%%
\RequirePackage{tcolorbox}
\RequirePackage{xcolor}
\definecolor{Gray}{gray}{0.85}
\definecolor{LightCyan}{rgb}{0.88,1,1}
\definecolor{bg}{rgb}{0.95,0.95,0.95}

% \setminted{
%   frame=single,
%   bgcolor=bg,
%   breaklines=true,
%   breakanywhere=true,
%   linenos,
%   tabsize=4,
%   tabcolor=black,
%   encoding=utf8
% }


%%%%%%%%%% 附录 %%%%%%%%%%
\RequirePackage[toc,page]{appendix}

\renewcommand{\appendix}{
    \newpage
    \setcounter{section}{0}
    \setcounter{subsection}{0}

    \renewcommand{\tablename}{附表}
    \renewcommand{\figurename}{附图}
    \renewcommand{\thesection}{附录 \Alph{section}}
}

%%%%%%%%%% 摘要 %%%%%%%%%%
% 中文摘要
\newcommand{\cabstractname}{摘~~~~~~~~要}
\newenvironment{cabstract}{%
    \vspace{5ex}
    \phantomsection
    \centerline{\heiti\zihao{3} \cabstractname}
    \addcontentsline{toc}{section}{\cabstractname}
    \vspace{5ex}
    \setlength{\parindent}{24bp}
    }{%
    \vskip 21bp
    {\heiti\zihao{-4} 关键词：} \buaaatckeyword
}

% 英文摘要
\newcommand{\eabstractname}{Abstract}
\newenvironment{eabstract}{%
    \vspace{5ex}
    \phantomsection
    \centerline{\bfseries \zihao{3} \eabstractname
    \addcontentsline{toc}{section}{\eabstractname}}
    \vspace{5ex}
    \setlength{\parindent}{24bp}
    }{%
    \vskip 21bp
    {\bfseries \zihao{-4} Key words: } \buaaatekeyword
}

%%%%%%%%%% Title %%%%%%%%%%%%%

\def \makefulltoc {
\newpage
\phantomsection
\pdfbookmark[section]{\contentname}{contents}
\tableofcontents
\newpage
\phantomsection
\pdfbookmark[section]{\figurecontentname}{lof}
\listoffigures
\newpage
\phantomsection
\pdfbookmark[section]{\tablecontentname}{lot}
\listoftables
\newpage
\pagestyle{mainmatter}
}

\def \maketoc {
\newpage
\phantomsection
\pdfbookmark[section]{\contentname}{contents}
\tableofcontents
\newpage
\pagestyle{mainmatter}
}

\def \maketocandfigure {
\newpage
\phantomsection
\pdfbookmark[section]{\contentname}{contents}
\tableofcontents
\newpage
\phantomsection
\pdfbookmark[section]{\figurecontentname}{lof}
\listoffigures
\newpage
\pagestyle{mainmatter}
}

\def \maketocandtable {
\newpage
\phantomsection
\pdfbookmark[section]{\contentname}{contents}
\tableofcontents
\newpage
\phantomsection
\pdfbookmark[section]{\tablecontentname}{lot}
\listoftables
\newpage
\pagestyle{mainmatter}
}