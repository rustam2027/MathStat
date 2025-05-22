#let template(doc) = {
  let theme = [Подготовка к Коллоквиуму по МатСтату]
  let author = [#emoji.chair Chair]
  let my_header = [#theme #h(1fr) #author]

  set text(font: "New Computer Modern", size: 12pt, lang: "ru")
  set par(first-line-indent: 1em, linebreaks: "optimized", justify: true)
  set page(numbering: "1/1", header: context[
    #if counter(page).get().at(0) > 1 {
      my_header
    }
  ]
  )

  show heading.where(level: 2): it => ""

  text(
    size: 20pt,
    weight: "semibold",
  )[#align(theme, center)]
  text(size: 18pt)[#align(author, center)]

  doc
}

#let definition(name, ..args) = {
  let definition = args.pos().at(0)
  block()[
  #heading(name, level: 2)
  #strong(name) --- #definition
  ]
}

#let theorem(name, ..args) = {
  let definition = args.pos().at(0)
  block()[
  #heading(name, level: 2)
  #strong([Теорема(#name)]) \
  #definition
  ]
}
