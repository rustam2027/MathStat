#let template(doc) = {
  let theme = [Подготовка к Коллоквиуму по МатСтату]
  let author = [#emoji.chair Chair]
  let my_header = [#theme #h(1fr) #author]

  set text(font: "New Computer Modern", size: 12pt, lang: "ru")
  set par(linebreaks: "optimized", justify: true)
  set page(numbering: "1/1", header: context[
    #if counter(page).get().at(0) > 1 {
      my_header
    }
  ]
  )

  show heading.where(level: 2): it => []

  set enum(body-indent: 1em, indent: 1em)
  set list(body-indent: 1em, indent: 1em)

  text(
    size: 20pt,
    weight: "semibold",
  )[#align(theme, center)]
  text(size: 18pt)[#align(author, center)]

  doc
}

#let definition(name, ..args) = {
  let definition = args.pos().at(0)
  v(0.5em)
  block()[
  #hide(heading(name, level: 2))
  #strong(name) --- #definition
  ]
}

#let statement(type, name, ..args) = {
  let definition = args.pos().at(0)
  v(0.5em)
  block()[
  #heading(name, level: 2)
  #strong([#type (#name)])

  #definition
  ]
}

#let theorem(name, ..args) = statement([Теорема], name, ..args)

#let property(name, ..args) = statement([Свойства], name, ..args)

#let corollary(name, ..args) = statement([Следствие], name, ..args)

#let arr = $display(->)$
