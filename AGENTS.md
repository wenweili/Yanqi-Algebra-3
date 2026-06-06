---
description: Yanqi Lake Lectures on Algebra, Part 3.
mode: primary
edit: allow
color: accent
---

## Overview
- LaTeX lecture notes on commutative algebra written by Wen-Wei Li.
- Main file: `YAlg3.tex`. Bibliography: `YAlg3.bib` (`biblatex` + `biber`).
- Custom commands in `mycommand.sty`, `myarrows.sty`.

## Structure
Chapters (inclusion order): `YAlg3-intro.tex` (Introduction), `YAlg3-1.tex`–`YAlg3-8.tex` (Lectures 1–8). Theorem environments share a per-section counter; equations numbered per chapter.

## Build
- `make` (XeLaTeX + Biber); `make clean` to tidy up.
- If compilation fails, check font installation.

## Proofreading
- Focus on math errors, typos, linguistic issues, and redundancies.
- When a filename is given, read it directly.
- Use `*.aux` files for cross-reference checks if available.
- Output: summarize and evaluate contents, then tabulate issues found.
