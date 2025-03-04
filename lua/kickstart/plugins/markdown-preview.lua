return {
  'iamcco/markdown-preview.nvim',
  -- build = 'cd app && yarn install',
  build = function()
    vim.fn.system 'cd app && npm install'
  end,
  ft = { 'markdown' },
  init = function()
    vim.g.mkdp_filetypes = { 'markdown' }
    vim.g.mkdp_auto_start = 1
    vim.g.mkdp_path_to_chrome = 'wslview' -- Use wslview to open browser
  end,
  cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
}
