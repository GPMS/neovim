local loaded, github_theme = pcall(require, 'github-theme')
if not loaded then
    return
end

github_theme.setup({
  theme_style = "dark",
  keyword_style = "italic",
})
