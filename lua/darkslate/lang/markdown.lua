return function(hl, o)
  hl["@markup.heading.1.markdown"] = { fg = "$red2", bold = true }
  hl["@markup.heading.1.markdown"] = { fg = "$red2", bold = true }
  hl["@markup.heading.2.markdown"] = { fg = "$red2" }
  hl["@markup.heading.3.markdown"] = { fg = "$red1", bold = true }
  hl["@markup.heading.4.markdown"] = { fg = "$red1" }
  hl["@markup.heading.5.markdown"] = { fg = "$red0", bold = true }
  hl["@markup.heading.6.markdown"] = { fg = "$red0" }
  hl["@markup.heading.markdown"] = { fg = "$red0" }
  hl["@markup.quote.markdown"] = { fg = "$dark9" }
  hl["@markup.math.markdown"] = { fg = "$yellow0" }
  hl["@markup.link.markdown_inline"] = { fg = "$cyan0" }
  hl["@markup.link.url.markdown_inline"] = { fg = "$cyan1", underline = true }
  hl["@markup.raw.markdown_inline"] = { fg = "$dark10", bg = "$dark0" }
  hl["@markup.list.markdown"] = { fg = "$orange2" }
  hl["@markup.list.checked.markdown"] = { fg = "$green2" }
  hl["@markup.list.unchecked.markdown"] = { fg = "$blue2" }
end
