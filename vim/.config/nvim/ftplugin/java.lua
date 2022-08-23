local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = '/home/michael/workspace/' .. project_name
local jdtls = require('jdtls')
local extendedClientCapabilities = jdtls.extendedClientCapabilities
extendedClientCapabilities.resolveAdditionalTextEditsSupport = true

local config = {
    cmd = {
        'jdtls',
        '-configuration', os.getenv("HOME") .. '/.local/share/nvim/mason/packages/jdtls/config_linux/',
        '-data', workspace_dir,
        '--jvm-arg=-javaagent:' .. os.getenv("HOME") .. '/.local/share/nvim/mason/packages/jdtls/lombok.jar'
    },

    root_dir = require('jdtls.setup').find_root({ '.git', 'mvnw', 'gradlew' }),

    settings = {
        java = {
            signatureHelp = { enabled = true },
            codeGeneration = {
                toString = {
                    template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}"
                }
            },
            hashCodeEquals = {
                useJava7Objects = true
            },
            useBlocks = true
        }
    },

    init_options = {
        bundles = {
            vim.fn.glob(os.getenv("HOME") .. "/SourcePackages/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar")
        },
        extendedClientCapabilities = extendedClientCapabilities
    },
    on_attach = function(client, bufnr)
        jdtls.setup_dap()
    end
}

jdtls.start_or_attach(config)
