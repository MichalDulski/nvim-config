require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "bash", "c", "cpp", "csv", "dockerfile", "html", "javascript", "lua", "query", "terraform", "typescript",  "vim", "vimdoc", "xml", "svelte" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = true,

  -- Automatically install missing parsers when entering buffer
  auto_install = false,

  -- List of parsers to ignore installing (or "all")
  -- ignore_install = { "elvish" },


  highlight = {
    enable = true,

    -- disable slow treesitter highlight for large files
    -- disable = function(lang, buf)
    --     local max_filesize = 100 * 1024 -- 100 KB
    --     local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
    --     if ok and stats and stats.size > max_filesize then
    --         return true
    --     end
    -- end,

    additional_vim_regex_highlighting = false,
  },
}
