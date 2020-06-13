---
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
- \usepackage{amsmath}
- \usepackage{arydshln}
fontsize: 10pt
---

# Introdução

Este trabalho tem como objetivo estudar o comportamento da
administração de _rocurinium bromide_ a uma amostra de pacientes [1].
Esta apresentação contém uma breve explicação sobre o que foi feito em
cada um dos exercícios, que se encontra mais pormenorizado no
relatório. Para fins desta análise recorremos ao _Matlab_.

O comportamento do _rocurinium bromide_ é dado pela seguinte função de transferência [2]:

$$G(s)=\frac{40\:\alpha^3}{s^3 + 15\:\alpha\:s^2 + 54\:\alpha^2\:s + 40\:\alpha^3}$$


# Exercício 1.a)

$\hfill \alpha \hfill$ | $\hfill \gamma \hfill$
-----------------------+-----------------------
0.0219                 | 1.2746
0.0528                 | 2.5362
0.0352                 | 1.5503
0.0293                 | 1.4728
0.0308                 | 1.9499
0.0330                 | 2.4823
0.0282                 | 1.2615
0.0295                 | 1.2390
0.0329                 | 2.5669
0.0394                 | 2.0425

Table: Amostra de pacientes

# Exercício 1.b)

\begin{center}
  \includegraphics[width=0.5\textwidth]{./1:b_ce.png}
\end{center}

# Exercício 1.c)

\begin{center}
  \includegraphics[width=0.5\textwidth]{./1:c_rt.png}
\end{center}

# Exercício 2.a)

Aplicando o critério de Routh-Hurwitz, obtemos:

\vspace{1em}

\begin{center}
    \begin{tabular}{c : c | c}
        $s^3$ & $1$                      & $54\,\alpha^2$ \\
        $s^2$ & $15\,\alpha$             & $40\,\alpha^3$ \\
        $s^1$ & $\frac{15\,\alpha^2}{3}$ & $0$     \\
        $s^0$ & $\frac{40\,\alpha^3}{3}$ & $0$
    \end{tabular}
\end{center}

\vspace{1em}

Daqui, facilmente vemos que os valores da primeira coluna têm todos o mesmo sinal se $15\alpha > 0$,
$\frac{154\alpha^2}{3} > 0$ e $\frac{40\alpha^3}{3} > 0$. Assim, temos que $\alpha > 0$.

# Exercício 2.b)

\begin{center}
  \includegraphics[width=0.5\textwidth]{./2:b_ce.png}
\end{center}

# Exercício 2.c)

O ganho estático obtido foi $5.318$.

\begin{center}
  \includegraphics[width=0.5\textwidth]{./2:c_ce.png}
\end{center}

# Exercício 2.d)

\begin{center}
  \includegraphics[width=0.5\textwidth]{./2:d_rt.png}
\end{center}

# Exercício 2.e) e 2.f)

Os polos dominantes são $-4\alpha$ e $\alpha$

\vspace{1em}

\begin{columns}
\begin{column}{0.4\textwidth}
\includegraphics[width=\textwidth]{./2:e_ce.png}
\end{column}
\begin{column}{0.4\textwidth}
\includegraphics[width=\textwidth]{./2:e_rt.png}
\end{column}
\end{columns}

O comportamento é semelhante ao da função de transferência exata, apenas com magnitude diferente. Este modelo
aproximado não tem o desempenho pretendido, já que muito poucos pacientes chegam a atingir o nível de NBM de referência
com a administração do bólus inicial com o valor dado.

# Exercício 3.a)

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

\begin{equation}
    y = \underset{C}{\overset{\begin{array}{ccc} x_1 & x_2 & x_3 \end{array}}{ [ \begin{array}{ccc} 1 & \ 0 & \ 0 \end{array} ] }} + \underset{D}{[ \ 0 \ ]} \: u
\end{equation}

# Exercício 3.b)

Pelo teste de Kalman, conclui-se que o sistema é controlável. Como os pólos do sistema se localizam todos no
semiplano esquerdo do plano complexo, então o sistema é estável

# Exercício 3.c)

\begin{columns}
    \begin{column}{0.4\textwidth}
        \includegraphics[width=\textwidth]{./3:c_ce.png}
    \end{column}
    \begin{column}{0.4\textwidth}
        \includegraphics[width=\textwidth]{./3:c_rt.png}
    \end{column}
\end{columns}

# Exercício 4.a)

\begin{columns}
    \begin{column}{0.4\textwidth}
        \includegraphics[width=\textwidth]{./4:a_ce.png}
    \end{column}
    \begin{column}{0.4\textwidth}
        \includegraphics[width=\textwidth]{./4:a_rt.png}
    \end{column}
\end{columns}

# Exercício 4.b)

\begin{center}
  \includegraphics[width=0.5\textwidth]{./4:b_ce.png}
\end{center}

# Exercício 4.c)

\begin{columns}
    \begin{column}{0.4\textwidth}
        \includegraphics[width=\textwidth]{./4:c_ce_wb.png}
    \end{column}
    \begin{column}{0.4\textwidth}
        \includegraphics[width=\textwidth]{./4:c_ce_nb.png}
    \end{column}
\end{columns}

# Exercício 4.d)

\begin{equation}
M^{-T} ={\left(M^{-1} \right)}^T =\left\lbrack \begin{array}{ccc}
1 & -15\;\alpha  & -54{\;\alpha }^3 +225\;\alpha^2 \\
0 & 1 & -15\;\alpha \\
0 & 0 & 1
\end{array}\right\rbrack
\end{equation}

\begin{equation}
    C^{-1} (A,B) = 
        \left\lbrack 
            \begin{array}{ccc}
                103 / (80\:\alpha)   & 3 / (8 \:\alpha^2) & 1 / (40\:\alpha^3) \\
                3   / (8 \:\alpha^2) & 1 / (40\:\alpha^3) & 0 \\
                1   / (40\:\alpha^3) & 0 & 0
            \end{array}
        \right\rbrack
\end{equation}

\begin{equation}
\therefore K=\left(\alpha -a\right)\;M^{-T} {\;C}^{-1}
\end{equation}


# Exercício 4.e)

\begin{center}
  \includegraphics[width=0.5\textwidth]{./4:e_rt.png}
\end{center}

# Conclusão

Neste trabalho foram realizados quatro exercícios com recurso a
métodos computacionais e a uma análise analítica manual. Agora, temos
uma melhor compreensão prática dos conhecimentos adquiridos nesta
disciplina bem como o seu alcance. Acreditamos assim que os objetivos
foram alcançados.

# Referências

```
    [1] ROC REAL.mat
    
    [2] Silva, J, Mendonça, T and Rocha, P., Pole placement based on model 
        identification for automatic delivery of Rocuronium. 
        2019 IEEE International Conference on Systems, Man, and Cybernetics, 
        Bari, October 2019.
```
