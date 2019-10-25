# pwsz-latex

Klasa do tworzenia sprawozdań i dokumentacji projektów dla kierunku Informatyka na PWSZ w Legnicy. Zawiera stronę tytułową i podstawowe ustawienia, importuje najważniejsze paczki (np. do poprawnej obsługi polskich znaków)

### Instalacja

Umieść pliki `pwszreport.cls` oraz `pwszlogo.pdf` (jeśli chcesz wyświetlać logo uczelni na stronie tytułowej) w katalogu ze sprawozdaniem i użyj klasy `pwszreport`:

```tex
\documentclass{pwszreport}

% lub w wersji bez loga PWSZ
\documentclass[nologo]{pwszreport}
```

Alternatywnie:
https://miktex.org/faq/local-additions

### Przykład

Zobacz [przykładowe sprawozdanie](example/report.pdf)

```tex
\documentclass{pwszreport}

\title{Sprawozdanie}
\course{Nazwa kursu}
\supervisor{dr inż. Jan Kowalski}
\author{John Doe, 12345}
\speciality{PAM}
\semester{V}

\begin{document}
    \maketitle

    \section{Testowa sekcja}
    Testowy paragraf
\end{document}
```

### Przydatne linki

- https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop
- https://miktex.org/
