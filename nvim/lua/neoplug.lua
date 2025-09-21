local M = {}

function M.run_my_program()
  local handle = io.popen("./pack/allen/start/neoplug")
  local result = handle:read("*a")
  handle:close()
end

vim.api.nvim_create_user_command(
  'NeoPlug',
  M.run_my_program,
  {}
)

return M
