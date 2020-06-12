---
mainfont: PTS55F.ttf
monofont: Hack-Regular.ttf
mainfontoptions:
- BoldFont=PTS75F.ttf
- ItalicFont=PTS56F.ttf
- BoldItalicFont=PTS76F.ttf
title: Controlo Automático - Projecto
subtitle: Bloqueio Neuromuscular em Anestesia
author:
- Daniela Silva
- Diogo Cordeiro
- Hugo Sales
- Tiago Ferrero
date: 2020
theme: Madrid
colortheme: dolphin
aspectratio: 169
output: pdf_document
header-includes:
fontsize: 10pt
---

# Code demo

Here's some code:

```hs
data Maybe a = Just a | Nothing
```

Here's a centered image of a ratio of textwidth:

\begin{center}
  \includegraphics[width=0.3\textwidth]{./image.png}
\end{center}

# Installation

I use nix because I couldn't get a consistent installation of all the tools required otherwise. Get nix here: <https://nixos.org/nix/>

See the contents of `default.nix`, and if you need more packages, try finding by running `nix repl nix/nixpkgs-pinned` (note that it's `nix repl`, not `nix-repl`.):

\small
```
> nix repl nix/nixpkgs-pinned

Welcome to Nix version 2.0.4. Type :? for help.

Loading 'nix/nixpkgs-pinned'...
Added 9438 variables.

nix-repl> texlive.coll<TAB>
texlive.collcell                     texlive.collection-langitalian
texlive.collectbox                   texlive.collection-langjapanese
texlive.collection-basic             texlive.collection-langkorean
texlive.collection-bibtexextra       texlive.collection-langother
texlive.collection-binextra          texlive.collection-langpolish
```

# Build

Run `make`, or `make watch` if you want to watch on file changes. Note that I use `nix-shell --run` for these, since I don't really want to bother having to start up a nix-shell session myself.

```
> make watch

nix-shell --run 'watchexec -e md make slides'
make[1]: Entering directory '/home/justin/Code/easy-markdown-beamer-pandoc'
pandoc -t beamer source.md -o slides.pdf
make[1]: Leaving directory '/home/justin/Code/easy-markdown-beamer-pandoc'
```

# Acknowledgements

## John Children

Showed me his setup to get started

## Domen Kozar

Linked me to some existing Nix+texlive docs that led to me finding other things

## Chris Martin

Suggested an option for setting fonts that led to what I needed here

## Et al

People who I forgot to include here
