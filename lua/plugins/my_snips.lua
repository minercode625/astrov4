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
    f(function(args) return args[1][1] end, { 1 }),
    t { "} \\\\", "", "" },
    t { "\\end{frame}" },
  }),
})
return {}
