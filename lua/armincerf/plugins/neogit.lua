local M = {}

M.config = function()
  local status_ok, neogit = pcall(require, "neogit")

  if not status_ok then
    return
  end

  -- https://github.com/ethanholz/nvim-lastplace#installation
  local options = {
    use_magit_keybindings = true,
    integrations = {
      diffview = true
    }
  }

  neogit.setup(options)
end

return M
