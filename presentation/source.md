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
- \usepackage{amssymb}
fontsize: 10pt
---

# Introdução

Este trabalho tem como principal objetivo pôr em prática os conhecimentos adquiridos na disciplina de Controlo
Automático.Esta apresentação contém uma breve explicação sobre o que foi feito em cada um dos exercícios, que se
encontra mais pormenorizado no relatório.O software usado para a realização deste trabalho foi o Matlab.

\begin{center}
  $G(s)=\frac{40\;\alpha {\;}^3 }{s^3 +15\;\alpha \;s^2 +54{\;\alpha }^2 \;s+40{\;\alpha }^3 }$
\end{center}

# Exercício 1

\begin{columns}
  \begin{column}{0.5\textwidth}
    sample = 10×2
    
        0.0219    1.2746
        0.0528    2.5362
        
        0.0352    1.5503
        
        0.0293    1.4728
        
        0.0308    1.9499
        
        0.0330    2.4823
        
        0.0282    1.2615
        
        0.0295    1.2390
        
        0.0329    2.5669
        
        0.0394    2.0425
  \end{column}
  \begin{column}{0.5\textwidth}
      \begin{center}
        \includegraphics[width=0.5\textwidth]{./untitled1.png}
      \end{center}
    \begin{center}
        \includegraphics[width=0.5\textwidth]{./untitled2.png}
    \end{center}
  \end{column}
\end{columns}

# Exercício 2

## a)
\begin{tabular}{c | c | c}
  $s^3$ & $1$                    & $54\alpha^2$ \\
  $s^2$ & $15\alpha$             & $40\alpha^3$ \\
  $s^1$ & $\frac{15\alpha^2}{3}$ & $0$     \\
  $s^0$ & $\frac{40\alpha^3}{3}$ & $0$
\end{tabular}
Critério de Routh-Hurwitz para o nosso polinómio. Daqui, vem que $\alpha$ tem de ser positivo.

## b)

\begin{center}
  \includegraphics[width=0.3\textwidth]{./untitled3.png}
\end{center}

## d)

\begin{center}
  \includegraphics[width=0.3\textwidth]{./untitled4.png}
\end{center}

## e)

Os polos são $-4\alpha$ e $\alpha$

## f)

Os comportamentos são semelhantes aos da transferência exata,apesar das magnitudes serem diferentes.
O modelo não o desempenho pretendido, já que muito poucos pacientes chegam a atingir o nível de NBM de referência em 
relação ao _bólus_ inicial.

# Exercício 3

## a)

Representação matricial do modelo de espaço de estados obtido:

\begin{equation}
\dot{x} =\overset{A}{\left\lbrack \begin{array}{ccc}
0 & 1 & 0\\
0 & 0 & 1\\
-40\alpha {\;}^3  & -54\alpha^2  & -15\alpha 
\end{array}\right\rbrack } x+\overset{B}{\left\lbrack \begin{array}{c}
0\\
0\\
40\alpha^3 
\end{array}\right\rbrack } u
\end{equation}



## b)

Pelo teste de Kalman, conclui-se que o sistema é controlável. Como os pólos do sistema se localizam todos no
semiplano esquerdo do plano complexo, então o sistema é estável

## c)

\begin{center}
  \includegraphics[width=0.3\textwidth]{./untitled5.png}
\end{center}
