{config, pkgs, ...}:

{
  home.file = {
    ".config/zed/settings.json" = {
      text = ''
  {
  "icon_theme": {
    "mode": "system",
    "dark": "Catppuccin Mocha",
    "light": "Catppuccin Latte"
  },
  "features": {
    "copilot": true
  },
  "agent": {
    "always_allow_tool_actions": true,
    "default_profile": "write",
    "default_model": {
      "provider": "copilot_chat",
      "model": "o4-mini"
    },
    "model_parameters": [],
    "dock": "left",
    "version": "2"
  },
  "project_panel": {
    "dock": "right"
  },
  "ui_font_size": 20,
  "ui_font_family": "JetBrainsMono Nerd Font",
  "buffer_font_size": 20,
  "buffer_font_family": "JetBrainsMono Nerd Font",
  "theme": {
    "mode": "system",
    "light": "One Light",
    "dark": "Rich Vesper"
  },

  // Lenguaje formater
  "languages": {
    "JavaScript": {
      "formatter": "prettier",
      "format_on_save": {
        "external": {
          "command": "prettier",
          "arguments": ["--stdin-filepath", "{buffer_path}"]
        }
      },
      "code_actions_on_format": {
        "source.fixAll.eslint": true
      }
    },
    "TypeScript": {
      "formatter": "prettier",
      "format_on_save": {
        "external": {
          "command": "prettier",
          "arguments": ["--stdin-filepath", "{buffer_path}"]
        }
      },
      "code_actions_on_format": {
        "source.fixAll.eslint": true
      }
    },
    "TSX": {
      "formatter": "prettier",
      "format_on_save": "on",
      "code_actions_on_format": {
        "source.fixAll.eslint": true
      }
    }
  },
  "terminal": {
    "font_family": "JetBrainsMono Nerd Font Mono",
    "line_height": "standard"
  },
  "buffer_font_fallbacks": ["JetBrainsMono Nerd Font"],
  "ui_font_fallbacks": ["JetBrainsMono Nerd Font"],
  "agent_font_size": 20
}
''
  }
}
