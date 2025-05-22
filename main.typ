#import "header.typ": template, definition, theorem, property
#import "questions.typ": question

#show: doc => template(doc)

#outline()

#question(1)[
  #definition([Случайная величина])[
    измеримое отображение $xi: (Omega, cal(F)) -> (RR, cal(B))$,
    где $cal(B)$ --- борелевская $sigma$-алгебра.
    ($xi$ измеримо, если $xi^(-1) (B) in cal(F)$ для каждого $B in cal(B)$)
  ]

  #definition([Функция распределение случайной величины])[
    функция $F_xi (t) = P(xi < t)$
  ]

  #property([свойства функций распределения])[
    + $x < y$ $=>$ $F_xi (x) <= F_xi (y)$
    + $display(lim_(x->-oo) F_xi (x) = 0)$, $display(lim_(x -> +oo) (x) = 1)$
    + $F_xi (t - 0) = F_xi (t)$
  ]
]
#question(2)[
  #table(columns: (1fr, 1fr), align: center + horizon ,table.header([*название*], [*вероятнось*]))[
   Нормальное, $N_(alpha, sigma^2)$
  ][$ 1/sqrt(2 pi) e^(-y^2 / 2) $][
    Бернулли, $B_p$
  ][$ P{xi = 0} = 1 - p \ P{xi = 1} = p $][
   Пуассона, $product_lambda$
  ][$ lambda^k / k! e^(-lambda) $][
    Равномерное, $U_(a, b)$
  ][
    $ cases(0", " y in [a, b], 1/(b - a)", " y in.not [a, b]) $
  ]

  #property([нормальное распределение])[
    + Устойчивость по суммированию: $xi ~ N_(alpha_1, sigma_1)$, $eta ~ N_(alpha_2, sigma_2)$, $xi + eta ~ N_(alpha_1 + alpha_2, sigma_1 + sigma_2)$
    + Моменты: $ EE[X^p] = cases(0", " p = 2n + 1, sigma^p (p - 1)!!", " p = 2n) $
  ]

  #property([распредедение Бернулли])[
    + Моменты: $EE[X^p] = EE[X] = p$
  ]

  #property([распределение Пуассона])[
    + Моменты: $EE[X] = lambda$, $D[X] = lambda$
    + Устойчивость по суммированию: $xi_i ~ product_lambda_i => sum xi_i ~ product_(sum lambda_i)$
  ]

  #property([равномерное распределение])[
    + Моменты: $EE[X] = (a + b)/2$, $D[X] = (b - a)^2 / 12$
  ]

  #property([хи-квадрат])[
    + Определение: $x = z_1 + ... z_n$, $z_i ~ N_(0, 1)$, $x ~ chi^2_n$
    + Устойчиво относительно суммирования
    + Моменты: $EE[X] = k$, $D[X] = 2k$
    + Получение из нестандартных: $display(x = sum_(i=1)^n ((z_1 - alpha) / sigma)^2)$, $z_i ~ N_(alpha, sigma^2)$, $x ~ chi^2_n$
    + Следствия леммы Фишера:
      - $n S^2 = (n - 1) S^2_0 ~ chi^2_(n-1)$, если $x_i ~ N_(0, 1)$
      - $display((n S^2) / sigma^2 ~ chi^2_(n - 1))$
  ]

  #property([распределение Стьюдента])[
    + Определение: $display(t = z / sqrt(y / k))$, где $z ~ N_(0, 1)$, $y ~ chi^2_k$, $t ~ T_k$
  ]

  #property([распределение Фишера])[
    + Определеие: $display(F_(d_1, d_2) = (Y_1 \/ d_1) / (Y_2 \/ d_2))$, где $Y_i ~ chi^2_d_i$
  ]

  #property([распределение Колмогорова])[
    + Функция распределения:
      $ K(t) = sum_(k=-oo)^(+oo) (-1)^k e^(-2 k^2 t^2) $
      где $t > 0$
  ]
]
#question(3)[
  #definition([Сходимость почти наверное])[$xi_n -> xi$ _почти наверное_,
  если $xi_n (w) -> xi (w)$ $forall w in A_0$,
  $A_0 = {w: xi_m (w) -> xi (w)}$ имеет полную меру]

  #definition([Сходимость по вероятности])[$xi_n -> xi$ _по вероятности_, если $forall epsilon > 0$
  $ lim_(n -> oo) P(|xi_n - xi| > epsilon) = 0 $]

  #property([сходимости по вероятности])[
    + $xi_n ->^p c$, $g in C$, при $x = c$, тогда $g(xi_n) ->^p g(c)$
    + $xi_n ->^p xi$, $g in C$, то $g(xi_n) ->^p g(xi)$
    + $xi_n ->^p xi$, и $xi_n$ монотонна, т.е. $P{w | xi_n (w) <= xi_(n + 1) (w)} = 1$, тогда $xi_n ->^"п.н." xi$
  ]

  #definition([Сходимость по распределению])[$xi_n -> xi$, _сходятся по распределению_ ($xi_n => xi$),
  если $F_xi_n (t) -> F_xi (t)$ поточечно для всех точек непрерывности предельной функции $F_xi (t)$]

  Из сходимости почти наверное следует сходимость по вероятности,
  а из нее следует сходимость по распределению.
  $ "п.н." -> "p" -> => $

]
#question(4)[
  #theorem("ЦПТ")[
    $xi_1, ..., xi_n$ --- н.о.р., $0 < D xi_i < oo$, тогда $display((S_n - n EE xi_1) / sqrt(n D xi_1)) => eta ~ N_(0, 1)$
  ]
]
#question(5)[
  #theorem("Закон больших чисел в форме Хинчина")[
    Пусть $xi_i$ --- н.о.р., $EE |xi_1|< oo$, тогда $S_n / n ->^p xi_1$, где $S_n = xi_1 + ... + xi_n$
  ]

  #theorem("Закон больших чисел в форме Маркова")[
    $ (S_n - EE S_n) / n -> 0, " если " (D S_n) / n^2 -> 0 $
  ]
]
#question(6)[]
#question(7)[]
#question(8)[]
#question(10)[]
#question(11)[]
#question(12)[]
#question(13)[]
#question(14)[]
#question(15)[]
#question(16)[]
