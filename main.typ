#import "header.typ": template, definition, theorem
#import "questions.typ": question

#show: doc => template(doc)


#outline()

#question(1)[
  #theorem([то се])[
    asd
  ]
]
#question(2)[]
#question(3)[]
#question(4)[]
#question(5)[]
#question(6)[]
#question(7)[]
#question(8)[]
#question(10)[]
#question(11)[
  *Построение доверетильного интревала для дисперсии:*
  Пусть $G (sigma) = (n S^2)/ (sigma ^ 2)$. Тогда по теореме о построении доверительных интревалов необходимо найти числа $t_epsilon^(1), t_epsilon^(2): P (t_epsilon^(1) < G(sigma) <  t_epsilon^(2)) = 1 -epsilon.$ Обычно для определения границ используются:
  $ P(G(sigma) < t_epsilon^(1)) = epsilon / 2;  P(G(sigma) < t_epsilon^(2)) = 1 - epsilon / 2 $

  Для нахождения  $t_epsilon^(1), t_epsilon^(2)$ используется таблица распределния $chi^2_(n - 1)$

  Рассмотрим функционал $ G(alpha, X) = sqrt(n) (overline(x) - alpha) / S_0 $
  $G(alpha, X) in T_(n - 1)$. Пусть $tau_epsilon$ -- квантиль уровня $1 - epsilon / 2$ распределения $T_(n-1).$ Тогда:
  $ alpha_n^- = overline(x) - (S_0 tau_epsilon) / sqrt(n); " " alpha_n^+= overline(x) + (S_0 tau_epsilon) / sqrt(n) $
]
#question(12)[
  #definition[Гипотеза][
    некоторое суждение о распредлении. Обозначается: $H_i$ 
  ]

  #definition[Простая и сложная гипотеза][
    $H_i$ -- простая, если она однозначно востонавиливает распредение, иначе сложная
  ]
  *Пример:*
    _Простые:_\
    $H_1 = {X_1 ~ N_(0,1)}$\
    $H_2 = {X_1 ~ E_3}$\
    _Сложные:_\
    $H_3 = {X_1 ~ Pi_lambda, lambda > 0}$\
    $H_4 = {X_1 ~ X_1 - "дискретная"}$
  

  #definition[Критерий][
    $ delta(overline(x)) = cases(H_1 ", " in A, H_2 ", " S(arrow(X)) in.not A  ) $
    
  ]

  #definition[Размер][
    $alpha_1 = alpha = epsilon = P_(H_i) (delta(overline(X)) eq.not H_i), " " i = 1, 2 $ 
  ]

  #definition[Вероятность ошибки $i$-го рода][
    $alpha_i = P_(H_i) (delta(overline(X)) eq.not H_i), " " i = 1, 2 $ 
  ]

  #definition[Мощность критерия из лекций][функция $beta_delta (theta) = 1 - alpha_theta (delta)$]


  #definition[Мощность критерия из семинаров][функция $beta = 1 - alpha_2 = P_(H_2) (delta(overline(X)) = H_2)$]

  #definition[Состоятельность][
    Критерий состоятельный, если $beta arrow.long 1$
  ]

]
#question(13)[
  #definition[Аналог ошибки второго рода][
    $alpha_theta (delta) = P_theta (delta eq.not theta)$
  ]
  #definition[Мощность критерия][функция $beta_delta (theta) = 1 - alpha_theta (delta)$]

  #definition[НМК (Наиболее Мощный Критерий)][Если в некотрпом классе криетериев существуем криетрий $delta^*$ имеющий мксимальную мощность при всех возможных значениях параметра, то $delta^*$ называется (равномерно) наиболее мощным в укзааном классе]

  #theorem[Неймана-Пирсона][
    Пусть $H_1, H_2$ -- простые гипотезы, тогда НМК 
    $  delta(overline(X)) = cases(H_1 ", " psi_2 / psi_1 <= C_epsilon, H_2 ", " psi_2 / psi_1 > C_epsilon) $ где $C_epsilon$ получается из уравнения:
    $ P_(H_1) (psi_2/psi_1 > C_epsilon) = epsilon $
  ]
]
#question(14)[
  #theorem[Критерий Колмогорова][
  Пусть $X_1, ..., X_n$ -- н.о.р с непрерывной $cal(F)$. Тогда $ rho (overline(X)) = sqrt(n) sup_(t in RR) |F_n^*(t) - F(t)| arrow.double eta ~ K$ -- распредление Колмогорова.

  $K(t) = display(sum_(k =-oo)^(+oo) (-1) ^ k e ^ (-2 k^2 t^2)); t > 0$
  ]

  #theorem[Критерий $chi^2$ Пирсона][
    Пусть $X_1, ..., X_n$ -- н.о.р. Тогда $ rho (overline(X)) = display(sum_(i = 1)^k (u_i - n p_i) / (n p_i)) arrow.double eta ~ chi^2_(k-1) $ где ${Delta_i}_(i=1)^k$ -- разбение $RR$, $u_i = display(sum_(j=1)^n I (X_j in Delta_i))$, $p_i = P_(H_i)(X_1 in Delta_i) > 0$. $k$ -- число интервалов.
  ]

]
#question(15)[

  #theorem[Критерий Фишера][
  Критерий Фишера используется для проверки прстой гипотиезы о равнестве дисперссий двух неазвисимых номральных выборок с одинаковым средним. Криетрий Фишера основыается на статистике со струкрутрой отношения $(xi_1^2 + ... + xi_n^2)/(overline(xi)_1^2 + ... + overline(xi)_m^2)$, где $xi_i, overline(xi)_j in N$ -- неазвисимы в совкупности.

  $(xi_1^2 + ... + xi_n^2)/(overline(xi)_1^2 + ... + overline(xi)_m^2) ~ F_(n, m)$ -- распределение Фишера с парметрами n, m. В силу Леммы Фишера и уже проделанных элементарных преобразований получаем, что $(n S^2_x) / (m S^2_y) in F_(n - 1, m - 1)$ 
  ]
  #theorem[Криетрий Стьюдента][
  Постановка задачи: $x_i in N_(alpha, sigma^2), N_(alpha_1, sigma^2), alpha, alpha_1$ -- неизвестны.

  Критеримй Стьюдента проверяет сложную гипотезу $H = {alpha = alpha_1}$ против конкруируюшей альтренативы. Этот критерий основан на статистике: 
  $ T = (overline(x) - overline(y)) / (sqrt(n S^2_x + m S^2_y)) dot sqrt((m+n-2)/ (1 / m + 1/n)) $

  которая имеет распрееление Стьюдента с $n + m - 2$ степенями свободы, где $S^2$ -- выборочная диспресия построенная по соотвествующей выборке.
  
  $overline(x)$ и $S_x^2$ -- неазвисимы по лемме Фишера. Аналогично для $y$. Т.к борелевские преобразования независмости не портят, то числитель не завсисит от знаменателя. 

  $ (overline(x) - overline(y)) / sigma sqrt((n m) / (n+m)) in N_(0, 1), (n S^2_x + m S^2_y) / sigma ^ 2 in chi^2_(m+n - 2) $

  получаем вероятностую модель закона стьюдента
  ] 
]
#question(16)[
  #definition([P-value])[в критериях согласия вероятность принять статистике критерия такоде или большее знаение. 
  $epsilon^* = 1 - F_eta (rho(overline(X))) = P(eta > rho ( overline(X)) ); rho(overline(X))$ -- реализация статисткии.

  Если p-value меньше заданного уровня значимости, то нулевая гипотеза отвергается в пользу альтренативной. В противном случае она отвергается.] 
]
