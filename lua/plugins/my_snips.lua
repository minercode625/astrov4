local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

ls.add_snippets("tex", {
  s("lec", {
    t { "\\begin{frame}{" },
    i(1, "slide_name"),
    t { "}" },
    t { "", "\t\\textbf{" },
    i(2, "subtitle"), -- subtitle 입력 필드 추가
    t { "} \\\\", "" },
    t { "\t\\vspace{0.3cm}" },
    t { "", "", "\\end{frame}" },
  }),
})
ls.add_snippets("tex", {
  s("fig", {
    t { "\\begin{figure}", "\t\\centering", "\t\\includegraphics[width=0.8\\textwidth]{./figs/" },
    i(1, "file_name"), -- file_name 입력 필드
    t { "}", "\\end{figure}" },
  }),
})
return {}
