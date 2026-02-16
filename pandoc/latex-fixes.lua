-- Pandoc Lua filter to make some "Typora-friendly" LaTeX-in-Markdown patterns
-- compile cleanly when going through pandoc's Markdown reader + LaTeX writer.
--
-- This repo contains some math written like:
--   $$
--   \begin{equation}
--   ...
--   \end{equation}
--   $$
-- which pandoc parses as a DisplayMath node and then wraps in \[...\], causing
-- LaTeX to see an equation environment nested inside display math
-- ("Bad math environment delimiter").
--
-- Typora can avoid this by emitting raw LaTeX blocks (via -f native) or by not
-- halting on LaTeX errors. GitHub Actions runs pandoc directly on Markdown and
-- uses -halt-on-error, so we fix it here without changing source Markdown.

local function is_math(el, kind)
  return el and el.t == "Math" and el.mathtype == kind
end

function Para(para)
  -- 1) If a display-math paragraph contains an equation environment, output raw TeX
  --    so LaTeX doesn't see nested math delimiters.
  if #para.content == 1 and is_math(para.content[1], "DisplayMath") then
    local text = para.content[1].text or ""
    if text:match("\\begin%{equation%*?%}") then
      return pandoc.RawBlock("tex", text)
    end
  end

  -- 2) Fix a very specific inline math delimiter issue: "$ | ... $"
  local fixed, changed = fix_spaced_dollar_pipe_math(para.content)
  if changed then
    return pandoc.Para(fixed)
  end

  return nil
end
