return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },

    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "pyright",
                    "ruff",
                    "eslint",
                    "rust_analyzer"
                }
            })
        end
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require('lspconfig')

            lspconfig.lua_ls.setup({})
            lspconfig.pyright.setup({})
            lspconfig.ruff.setup({})
            lspconfig.eslint.setup({})
            lspconfig.rust_analyzer.setup({
                settings = {
                    ["rust-analyzer"] = {
                        inlayHints = {
                            chainingHints = true,
                            parameterHints = true,
                            typeHints = {
                                enable = true,
                                hideClosureInitialization = false
                            },
                            closureReturnTypeHints = {
                                enable = "always"
                            },
                            lifetimeElisionHints = {
                                enable = "always",
                                useParameterNames = true
                            },
                            reborrowHints = {
                                enable = "never"
                            },
                            bindingModeHints = {
                                enable = true
                            },
                            renderColons = true
                        }
                    }
                },
                on_attach = function(client, bufnr)
                    if client.server_capabilities.inlayHintProvider then
                        vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })

                        vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter", "CursorHold" }, {
                            buffer = bufnr,
                            callback = function()
                                vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
                            end,
                        })
                    end
                end
            })

        end
    }
}
