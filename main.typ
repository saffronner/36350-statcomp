#set document(
  title: "36-350 Statistical Computing R/Python Cheatsheet",
  date: datetime.today()
)
#set page(width: auto, height: auto, margin: 0.5in)

#let process(c) = {
  c.enumerate().map(it => {
    let (i, it) = it
    
    if i == 0 {
      eval(it, mode: "markup")
    }
    if i == 1 {
      raw(it.replace(regex("[“”]"), "\""), lang: "R")
    } 
    if i == 2 {
      raw(it.replace(regex("[“”]"), "\""), lang: "python")
    }
  })
}

#let content = csv("content.csv")
#let processed = content.map(process)

= 36-350 Statistical Computing R/Python Cheatsheet
#v(1em)

#grid(
  columns: 3,
  // stroke: black,
  column-gutter: 2em,
  row-gutter: 1em,
  inset: 0.25em,
  align: top,
  ..processed.flatten()  
)