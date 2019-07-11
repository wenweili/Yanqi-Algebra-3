This are the XeLaTeX sources for the my lecture notes on commutative algebra, entitled somewhat pompously as **Yanqi Lake Lectures on Algebra, Part III**. These notes have been used at
* [University of Chinese Academy of Sciences](http://www.ucas.ac.cn) (Yanqi Lake campus), whence the title;
* [Peking University](http://www.pku.edu.cn).

These notes are slightly outdated, poorly organized, and the mathematical contents have not been thoroughly checked yet. Please use them at your own risk. The author does not intend to publish these notes.

# How to compile

## System requirements
The source codes are to be compiled using XeLaTeX. The reader is assumed to work under the UN*X + bash environment.

The recipes below can be tweaked to work under Windows, but this is not recommended. The simplest solution is to go open-source.

We only need the standard packages and fonts, such as
- [TeX Live](https://tug.org/texlive), including the programs latexmk, xindy and biber.
- Standard fonts included in TeX Live.
- The [Noto Serif CJK](https://github.com/googlei18n/noto-cjk) fonts.
- The [League Spartan](https://www.theleagueofmoveabletype.com/league-spartan) font.

The aforementioned OpenType fonts should be installed system-wide to be accessible by XeLaTeX.

For some strange reason, I used and installed the fonts TeX Gyre Heros Cn and TeX Gyre Pagella. In case of error messages related to these fonts, please look for the OTF files (in the directories in your computer which store TeX-related fonts) whose names begin with **texgyreheroscn** and **texgyrepagella**, then install them manually in your system.

Make sure that all the relevant packages/programs are installed. For reference, the author made the compilation using Arch-based Linux distributions with TeX Live 2018; the packages **biber** and **texlive-science** are required.

## Clone the files
As a preparation for the compilation process, we will clone the files into `~/Yanqi-Algebra-3` in our home directory. In command line, type
```
cd ~
git clone https://github.com/wenweili/Yanqi-Algebra-3
```

All the source files are encoded in UTF-8, which is the de facto standard for storing multilingual texts (although the document is largely written in English). If you encounter problems in opening the source files under Windows, try to re-configure your editor or convert the encoding manually.

## Compile the TeX source

Move to the directory
```
cd ~/Yanqi-Algebra-3
```
Then, either type
```
latexmk -pdf -pdflatex="xelatex -shell-escape -interaction=nonstopmode %O %S" YAlg3
```
under bash, or more simply
```
make
```

The resulting PDF file should appear as **YAlg3.pdf** in the same directory. Note that the main file is **YAlg3.tex**.

To clean up everything in our directory except the PDF file, type
```
make clean
```

# The source codes
These notes are based on the standard *book* document class from LaTeX. Some other macros are outsourced to **mycommands.sty** and **myarrows.sty**.

# The cover page
The cover page is in the file **Cover-page.pdf**, which will automatically be included in the resulting main PDF file after compilation. It is made from the open source software [Scribus](https://www.scribus.net/); the source file in *.sla* format is not included here.

# Feedback
In case of problems of compilation, please kindly report to the author. Make sure that all the system requirements above are met, and provide detailed error messages. Other suggestions are also welcome.

# License
Except possibly the photos and the logo of UCAS, the entire codebase is under [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/).
