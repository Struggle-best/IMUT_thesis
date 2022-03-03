\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{imutthesis}[v1.0 PoTong made LaTeX Template for IMUTthesis] 
\LoadClass[heading=true,zihao=-4,sub3section,scheme = chinese,openany]{ctexbook}
\RequirePackage[dvipsnames, svgnames, x11names]{xcolor}
\RequirePackage[version=4]{mhchem}    
%\RequirePackage[numbers,sort&compress]{natbib}       
\RequirePackage{
	zhlipsum,caption,fancyhdr,gbt7714,lipsum,
	xeCJK,graphicx,hyperref,float,bm,amsmath,amssymb,
	amstext,booktabs,titletoc,listings,subfigure,
	longtable,chemfig,appendix,tikz,tabularx,tcolorbox,xparse,enumitem
}
\RequirePackage[a4paper,left=3cm,right=2.5cm,top=3cm,bottom=2.5cm]{geometry}
\newCJKfontfamily\jc{黑体}[AutoFakeBold=2.5]
\usepackage{}
\setlist{partopsep=1pt,
	itemsep= 0 pt,
	topsep = 0pt,
	parsep=1pt
}
%-----   command   -----
\newcommand*\imut@keys@studentid{}
\newcommand*\imut@keys@lwleixing{}
\newcommand*\imut@keys@title{}
\newcommand*\imut@keys@name{}
\newcommand*\imut@keys@xueyuan{}
\newcommand*\imut@keys@xibie{}
\newcommand*\imut@keys@profession{}
\newcommand*\imut@keys@class{}
\newcommand*\imut@keys@teacher{}
\newcommand*\imut@keys@nian{}
\newcommand*\imut@keys@yue{}
\newcommand*\imut@keys@yemei{}
%-----   封面   -----
\renewcommand{\maketitle}{
\thispagestyle{empty}
\begin{figure}[t]
	\parbox[b]{2cm}{
		\includegraphics[width=3cm]{logo/imutLogo.pdf}
	}
	\parbox[b]{15cm}{   
		\begin{quotation}
			\zihao{5}  \jc \bfseries
			\hspace{5cm}学校代码：\hspace{0.75cm}10128    %要求对齐可将 \hspace{0.75cm} 删除
			\vskip 0.2cm
			\hspace{5.1cm}学\hspace{1.1cm}号：\imut@keys@studentid   
			~\\
		\end{quotation}
	}
\rule[-10pt]{10cm}{0em}
\end{figure}
\vspace{10em}	
\begin{figure}[H]
	\centering
	\includegraphics[width=7.97cm]{logo/words.pdf}
\end{figure}
\begin{center}
	\jc \bfseries
	\fontsize{44pt}{1.55cm} 
    \imut@keys@lwleixing
\end{center}
\vspace{2cm}
\begin{table}[H]
\hspace{1.5cm}
 \jc \zihao{4} \bfseries
 \begin{tabular}{lp{0.55\linewidth}l}
	题\hspace{1.5cm} 目\hspace{0.08cm}：                                        &  {\imut@keys@title}       \\
	学\hspace{0.225cm}生\hspace{0.225cm}姓\hspace{0.225cm}名\hspace{0.1cm}：    &  {\ziju{0.15pt}\imut@keys@name }       \\
	学\hspace{1.5cm} 院\hspace{0.1cm}：                                         &  {\ziju{0.15pt}\imut@keys@xueyuan}     \\
	系\hspace{1.5cm} 别\hspace{0.1cm}：                                         &  {\ziju{0.15pt}\imut@keys@xibie}       \\
	专\hspace{1.5cm} 业\hspace{0.1cm}：                                         &  {\ziju{0.15pt}\imut@keys@profession}   \\
	班\hspace{1.5cm} 级\hspace{0.1cm}：                                         &  {\ziju{0.15pt}\imut@keys@class}        \\  
	指\hspace{0.225cm}导\hspace{0.225cm}教\hspace{0.225cm}师\hspace{0.08cm}：   &   {\ziju{0.2pt}\imut@keys@teacher  }                                      
 \end{tabular} 
\end{table}	

\begin{figure}[b]
		\centering \bfseries \jc \zihao{-2}  
	{\ziju{0.32pt}	\imut@keys@nian 年 \imut@keys@yue 月} %这样可以和word模板做到一样
\end{figure}
	\clearpage
}

%------   newcommand   ------
\newcommand*\studentid[1]{%
   \renewcommand{\imut@keys@studentid}{#1}}

\newcommand*\lwleixing[1]{%
	\renewcommand{\imut@keys@lwleixing}{#1}}

\renewcommand*\title[1]{%
	\renewcommand{\imut@keys@title}{#1}}

\newcommand*\name[1]{%
	\renewcommand{\imut@keys@name}{#1}}

\newcommand*\xueyuan[1]{%
	\renewcommand{\imut@keys@xueyuan}{#1}}

\newcommand*\xibie[1]{%
	\renewcommand{\imut@keys@xibie}{#1}}

\newcommand*\profession[1]{%
	\renewcommand{\imut@keys@profession}{#1}}

\newcommand*\class[1]{%
	\renewcommand{\imut@keys@class}{#1}}

\newcommand*\teacher[1]{%
	\renewcommand{\imut@keys@teacher}{#1}}

\newcommand*\nian[1]{%
	\renewcommand{\imut@keys@nian}{#1}}

\newcommand*\yue[1]{%
	\renewcommand{\imut@keys@yue}{#1}}

\newcommand*\yemei[1]{%
	\renewcommand{\imut@keys@yemei}{#1}}
%-----   全局设置   ------
\setCJKmainfont{simsun.ttc}                  %全文宋体
\setmainfont{Times New Roman}                %设置字母数字新罗马字体
\graphicspath{{figure/}}                     % 图片引用路径
\setlength{\baselineskip}{22pt}
\setlength{\parskip}{0.2em}
\setlength{\belowdisplayskip}{-5cm} 

%-----  页眉页脚   -----
\fancypagestyle{myfc1}{
	\fancyhf{}
	\fancyhead[CO,CE]{\zihao{-5} \imut@keys@yemei }
}
\fancypagestyle{myfc2}{
	\fancyhf{}
	\fancyhead[CO,CE]{\zihao{-5} \imut@keys@yemei }
	\fancyfoot[CO,CE]{\thepage}
}

\pagestyle{myfc2}

%-----   定制章节标题   -----
\ctexset{
	tocdepth ={subsection},
	secnumdepth ={subsubsection},
	contentsname={目\hspace{0.25cm} 录},
	listfigurename={插\hspace{0.25cm} 图},
	listtablename={ 表 \hspace{0.25cm} 格},
	bibname = {参考文献},
	chapter={
		fixskip=true ,
		pagestyle = myfc2,
		name = {第,章},
		number = \chinese{chapter},% \Roman  \arabic 
		format = \heiti\zihao{-2}\centering,%\bfseries    %\raggedleft   \raggedright 
		beforeskip = 15pt,
		afterskip  = 2.5em
	},
	section={
		fixskip=true,
		number =\arabic{chapter}.\arabic{section},
		numberformat=\bfseries,
		format = \heiti\zihao{-3},%\bfseries%\raggedleft
		beforeskip = 15pt,
		afterskip = 15pt
	},
	subsection={
		number =\arabic{chapter}.\arabic{section}.\arabic{subsection},
		numberformat=\bfseries,
		format = \heiti\zihao{4},%\bfseries %\raggedleft
		beforeskip   = 0pt,
		afterskip    = 11pt
	},
	subsubsection={
		fixskip=true ,
		number =\arabic{chapter}.\arabic{section}.\arabic{subsection}.\arabic{subsubsection},
		numberformat=\bfseries,
		format = \heiti\zihao{-4},%\bfseries %\raggedleft
		beforeskip   = 11pt,
		afterskip    = 11pt
	},
	paragraph={
		fixskip=true ,
		format = \bfseries \heiti\zihao{-4},%\bfseries %\raggedleft
		beforeskip   = 11pt,
		afterskip    = 11pt
	},
	subparagraph={
		fixskip=true ,
		indent=2\ccwd,
		format = \bfseries \heiti\zihao{-4},%\bfseries %\raggedleft
		beforeskip   = 9pt,
		afterskip    = 11pt
	}
}



%-----     中英文摘要     -----
\newcommand{\cnabstractname}{摘\hspace{0.25cm}要}               %中文摘要
\newenvironment{cnabstract}{
	\thispagestyle{myfc1}
	\par\small
	\noindent\mbox{}\hfill{\heiti \zihao{-2}\cnabstractname}\zihao{-4}\hfill\mbox{}\par   %\bfseries
	\vskip 2.5ex}{\clearpage\par\vskip 2.5ex
}

\newcommand{\cnkeywords}[1]{	
	\indent
	{关键词}：#1
}

\newcommand{\enabstractname}{Abstract}                           %Abstract
\newenvironment{enabstract}{%
	\thispagestyle{myfc1}
	\par\small
	\noindent\mbox{}\hfill{\bfseries\heiti \zihao{-2}\enabstractname}\zihao{-4}\hfill\mbox{}\par
	\vskip 2.5ex}{\zihao{-4}\clearpage\par\vskip 2.5ex}

\newcommand{\enkeywords}[1]{
	\indent
	{Keywords}: #1}


%-----    引言    -----
\newcommand{\introductionname}{引 \hspace{0.25cm}言}             %引言
\newenvironment{introduction}{%
	\newpage \par\small
	\setcounter{page}{1}
	\pagestyle{myfc2}
	\noindent\mbox{}\hfill{\heiti \zihao{-2}  \introductionname}\zihao{-4}\hfill\mbox{}\par
	\vskip 2.5ex
}
{
	\zihao{-4}\par\vskip 2.5ex
	\addcontentsline{toc}{chapter}{引言}   %把引言加入目录
}




%-----    定制目录    ------
\titlecontents{chapter}              
[4em]                                
{\songti\zihao{-4}\vspace{0.5em}}    
{\contentslabel{4em}}                
{\hspace{-4em}\songti \zihao{-4}}    
{~\titlerule*[10pt]{$\cdot$}\contentspage\thispagestyle{myfc1}}  

\titlecontents{section}
[4em]
{\songti \zihao{-4}\vspace{0.2em}}
{\contentslabel{2em}}
{\hspace{-2em}\songti \zihao{-4}}
{~\titlerule*[10pt]{$\cdot$}~\contentspage}

\titlecontents{subsection}
[6em]
{\songti \zihao{-4}}
{\contentslabel{2.5em}}
{\hspace{-2.5em}\songti \zihao{-4}}
{~\titlerule*[10pt]{$\cdot$}~\contentspage}

\titlecontents{figure}
[4em]
{\songti \zihao{-4}\vspace{0.5em}}
{\makebox[0pt][r]{\makebox[1.5cm][l]{图\thecontentslabel}}}
{\hspace{-1.7cm}\songti \zihao{-4}}
{\titlerule*[10pt]{$ \cdot $}\contentspage\thispagestyle{myfc1}}

\titlecontents{table}
[4em]
{\songti \zihao{-4}\vspace{0.5em}}
{\makebox[0pt][r]{\makebox[1.5cm][l]{表\thecontentslabel}}}
{\hspace{-1.7cm}\songti \zihao{-4}}
{\titlerule*[10pt]{$ \cdot $}\contentspage\thispagestyle{myfc1}}


%-----   图表公式  -----
\renewcommand {\thetable} {\thechapter{}-\arabic{table}}
\renewcommand {\thefigure} {\thechapter{}-\arabic{figure}}
\renewcommand {\theequation} {\thechapter{}-\arabic{equation}}  

\makeatletter
\@addtoreset{table}{chapter}
\@addtoreset{figure}{chapter}
\@addtoreset{equation}{chapter}
\makeatother

\DeclareCaptionFont{song}{\songti}
\DeclareCaptionFont{minusfour}{\zihao{5}}
\captionsetup[figure]{%
	format=hang,   
	labelsep=quad, %space，period，
	font={song,minusfour,bf}, 
	position=bottom,
	aboveskip=5pt,
	belowskip=-10pt	 
}
\captionsetup[table]{%
	format=hang,   
	labelsep=quad, 
	font={song,minusfour,bf}, 
	position=top,
	aboveskip=5pt,
	belowskip=-10pt	
}

%-----   参考文献   -----
\setlength{\bibsep}{0.5ex} 
\bibliographystyle{gbt7714-numerical}         %   参考文献格式

%-----   致谢   -----
\newcommand{\acknowledgmentname}{谢 \hspace{0.25cm}辞}             
\newenvironment{acknowledgment}{%
	\addcontentsline{toc}{chapter}{谢辞} 
	\newpage\par\small
	\noindent\mbox{}\hfill{\heiti \zihao{-2}  \acknowledgmentname}\zihao{-4}\hfill\mbox{}\par
	\vskip 2.5ex}{\newpage\par\vskip 2.5ex}

%-----   注释   -----

\newcommand{\notationname}{ 注\hspace{0.25cm}释}            
\newenvironment{notation}{%
	\addcontentsline{toc}{chapter}{注释} 
	\newpage\par\small
	\noindent\mbox{}\hfill{\heiti \zihao{-2}  \notationname}\zihao{-4}\hfill\mbox{}\par
	\vskip 2.5ex}{\newpage\par\vskip 2.5ex}

%-----   结论   -----
\newcommand{\conclusionname}{ 结\hspace{0.25cm}论}             %
\newenvironment{conclusion}{%
	\addcontentsline{toc}{chapter}{结论} 
	\newpage\par\small
	\noindent\mbox{}\hfill{\heiti \zihao{-2}  \conclusionname}\zihao{-4}\hfill\mbox{}\par
	\vskip 2.5ex}{\newpage\par\vskip 2.5ex}

%-----   附录   -----
\renewenvironment{appendices}{
	\setcounter{equation}{0}
	\setcounter{table}{0}
	\setcounter{figure}{0}
	\setcounter{chapter}{0}
	\renewcommand {\thefigure}{\thechapter\arabic{figure}}
	\renewcommand {\theequation}{\thechapter\arabic{equation}}
	\renewcommand {\thetable} {\thechapter{}\arabic{table}}
	\renewcommand\thechapter{\Alph{chapter}}
	\ctexset{
		chapter={
			fixskip=true ,
			numberformat=\bfseries,
			name = {附录},
			number = \Alph{chapter},% \Roman  \arabic 
			format = \heiti\zihao{-2}\centering,  %\raggedleft  \raggedright 
			beforeskip = 15pt,
			afterskip  = 2.5em
		},
		section={
			numberformat=\bfseries,
			number = \Alph{chapter}.\arabic{section},
			format = \heiti\zihao{-3}%\raggedleft  \bfseries
		},
		subsection={
			indent=2\ccwd,
			numberformat=\bfseries,
			number = \Alph{chapter}.\arabic{section}.\arabic{subsection},
			format = \heiti\zihao{-4} %\raggedleft  \bfseries
		}
	}
}

%-----   超链接   -----
\hypersetup{
	urlcolor=cyan,
	citecolor=black,
	linkcolor=black,
	hidelinks,
	colorlinks         = true ,
}

%-----    代码环境   -----
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}
\definecolor{frenchplum}{RGB}{190,20,83}
\lstset{
	frame=tb,
	aboveskip=3mm,
	belowskip=3mm,
	showstringspaces=false,
	columns=flexible,
	framerule=1pt,
	rulecolor=\color{gray!35},
	backgroundcolor=\color{gray!5},
	basicstyle={\small\ttfamily},
	%numbers=none,  
	numbers=left,  
	numberstyle=\footnotesize\color{black},
	keywordstyle=\color{blue},
	commentstyle=\color{dkgreen},
	stringstyle=\color{mauve},
	breaklines=true,
	breakatwhitespace=true,
	tabsize=3,
	%firstnumber=last,   %连续编号
	commentstyle=\color{gray!50!black!50},
	emph={main,none,fontenc,fontspec,xeCJK,FiraMono,xunicode,newtxmath,figure,fig,image,img,table,
	itemize,enumerate,newtxtext,newtxtt,ctex,microtype,description,times,newtx,booktabs,tabular,
	PDFLaTeX,XeLaTeX,type1cm,BibTeX,device,color,mode,lang,amsthm,tcolorbox,titlestyle,cite,
	marginnote,ctex,listings},
	emphstyle={\color{frenchplum}},
	morekeywords={begin,main,DeclareSymbolFont,SetSymbolFont,toprule,midrule,bottomrule,institute,
		version,includegraphics,setmainfont,setsansfont,setmonofont,setCJKmainfont,setCJKsansfont,
		setCJKmonofont,RequirePackage,figref,tabref,email,maketitle,keywords,definecolor,extrainfo,
		logo,cover,subtitle,appendix,chapter,hypersetup,mainmatter,tableofcontents,elegantpar,
		numbers,authoryear,heiti,kaishu,lstset,pagecolor,zhnumber,marginpar,part,equote
	},
}
\tcbuselibrary{listings}
\tcbuselibrary{xparse}

\DeclareTotalTCBox{\myverb}{ v }{verbatim,
	on line,
	arc=3pt,colframe=red!75!black,colupper=blue,before upper={\rule[-3pt]{0pt}{12pt}},
	boxsep=1mm,left=0pt,right=0pt,top=0pt,bottom=0pt,
	boxrule=0pt,bottomrule=0.1pt,toprule=0.1pt}{#1}

\endinput