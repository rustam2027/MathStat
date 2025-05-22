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
#question(3)[]
#question(4)[]
#question(5)[]
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
