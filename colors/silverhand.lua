vim.cmd("highlight clear")
vim.o.background = "dark"
vim.g.colors_name = "silverhand"

local c = {
  -- Core UI palette
  bg        = "#050600",
  bg_alt   = "#0b0f00",
  fg        = "#e6f28a",

  -- CP2077 signature
  yellow    = "#fcee0a",
  yellow_dim= "#c9c23a",
  blue_sel  = "#5b7cff",
  blue_ui   = "#6f8cff",

  -- Alerts / accents
  red       = "#ff3b3b",

  -- Utility
  gray      = "#8c8f55",
}

local function hl(g, o)
  vim.api.nvim_set_hl(0, g, o)
end

-- =========================
-- Core editor
-- =========================
hl("Normal",      { fg = c.fg, bg = c.bg })
hl("NormalFloat", { fg = c.fg, bg = c.bg_alt })

hl("CursorLine",   { bg = "#0e1200" })
hl("CursorColumn", { bg = "#0e1200" })

hl("LineNr",       { fg = c.gray })
hl("CursorLineNr", { fg = c.yellow, bold = true })

hl("WinSeparator", { fg = c.yellow_dim })
hl("VertSplit",    { fg = c.yellow_dim })

-- =========================
-- Cursor (UI caret)
-- =========================
hl("Cursor",  { fg = c.bg, bg = c.yellow })
hl("lCursor", { fg = c.bg, bg = c.yellow_dim })

-- =========================
-- Text hierarchy (mono-terminal feel)
-- =========================
hl("Comment", { fg = "#6f7330", italic = true })

hl("Identifier", { fg = c.fg })
hl("Function",   { fg = c.fg, bold = true })
hl("Keyword",    { fg = c.yellow, bold = true })
hl("Operator",   { fg = c.yellow_dim })

hl("Type",       { fg = c.fg })
hl("String",     { fg = c.yellow })
hl("Number",     { fg = c.yellow })
hl("Boolean",    { fg = c.yellow, bold = true })
hl("Constant",   { fg = c.yellow })

-- Tree-sitter
hl("@variable",        { fg = c.fg })
hl("@function",        { fg = c.fg, bold = true })
hl("@keyword",         { fg = c.yellow, bold = true })
hl("@string",          { fg = c.yellow })
hl("@number",          { fg = c.yellow })
hl("@boolean",         { fg = c.yellow, bold = true })
hl("@type",            { fg = c.fg })
hl("@namespace",       { fg = c.yellow_dim })

-- =========================
-- Selection (blue contact highlight)
-- =========================
hl("Visual", {
  fg = c.bg,
  bg = c.blue_sel,
  bold = true,
})

hl("MatchParen", {
  fg = c.bg,
  bg = c.blue_ui,
  bold = true,
})

-- =========================
-- Search (yellow scanner bar)
-- =========================
hl("Search", {
  fg = c.bg,
  bg = c.yellow,
  bold = true,
})

hl("IncSearch", {
  fg = c.bg,
  bg = c.blue_sel,
  bold = true,
})

-- =========================
-- UI menus (dataterm look)
-- =========================
hl("Pmenu",    { fg = c.fg, bg = "#0a0d00" })
hl("PmenuSel", { fg = c.bg, bg = c.blue_sel, bold = true })

hl("StatusLine", {
  fg = c.bg,
  bg = c.yellow,
  bold = true,
})

hl("StatusLineNC", {
  fg = c.gray,
  bg = "#070900",
})

hl("TabLine", {
  fg = c.gray,
  bg = "#070900",
})

hl("TabLineSel", {
  fg = c.bg,
  bg = c.blue_sel,
  bold = true,
})

hl("TabLineFill", { bg = "#050600" })

-- =========================
-- Diagnostics (subtle, UI-consistent)
-- =========================
hl("DiagnosticError", { fg = c.red, bold = true })
hl("DiagnosticWarn",  { fg = c.yellow })
hl("DiagnosticInfo",  { fg = c.blue_ui })
hl("DiagnosticHint",  { fg = c.yellow_dim })

hl("DiagnosticUnderlineError", { undercurl = true, sp = c.red })
hl("DiagnosticUnderlineWarn",  { undercurl = true, sp = c.yellow })

-- =========================
-- Git (terminal-style)
-- =========================
hl("DiffAdd",    { fg = c.yellow })
hl("DiffDelete", { fg = c.red, bold = true })
hl("DiffChange", { fg = c.yellow_dim })

hl("GitSignsAdd",    { fg = c.yellow })
hl("GitSignsChange", { fg = c.yellow_dim })
hl("GitSignsDelete", { fg = c.red, bold = true })
