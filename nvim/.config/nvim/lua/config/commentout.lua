local function comment_out(opts)
  local start = math.min(opts.line1, opts.line2)
  local finish = math.max(opts.line1, opts.line2)
  vim.api.nvim_command(start .. "," .. finish .. "s/^/#/")
  vim.api.nvim_command("noh")
end

vim.api.nvim_create_user_command("CommentOut", comment_out, { range = true })
