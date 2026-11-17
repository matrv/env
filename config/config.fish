if status is-interactive
    /home/linuxbrew/.linuxbrew/bin/brew shellenv | source

    starship init fish | source
    fzf --fish | source

    fish_add_path (brew --prefix rustup)/bin

    set -g fish_greeting

    alias ls="eza -lah --icons --group-directories-first"
    alias v="nvim"
    alias lg="lazygit"
    alias nu="taze -Il --maturity-period 3"
    alias ns="nr start"
    alias nd="nr dev"
    alias nb="nr build"
    alias nde="na dedupe"
    alias cat="bat --plain"
    alias open="xdg-open"
    alias oc="opencode"
    alias mpv="/var/lib/flatpak/exports/bin/io.mpv.Mpv"

    function tmp
        set dir (mktemp -d)
        set session_name (basename $dir | string replace -a '.' '_')
        echo "Creating tmux session '$session_name' in $dir"
        echo $dir | wl-copy
        if set -q TMUX
            tmux new-session -d -s $session_name -c $dir
            tmux switch-client -t $session_name
        else
            tmux new-session -s $session_name -c $dir
        end
    end

    set -gx FZF_DEFAULT_OPTS "\
      --color=bg+:#313244,bg:#1E1E2E,spinner:#F5E0DC,hl:#F38BA8 \
      --color=fg:#CDD6F4,header:#F38BA8,info:#CBA6F7,pointer:#F5E0DC \
      --color=marker:#B4BEFE,fg+:#CDD6F4,prompt:#CBA6F7,hl+:#F38BA8 \
      --color=selected-bg:#45475A \
      --color=border:#6C7086,label:#CDD6F4"

    set -gx EDITOR nvim
    set -gx VISUAL nvim
    set -gx MANPAGER "nvim +Man!"
    set -gx NI_DEFAULT_AGENT bun
    set -gx NI_GLOBAL_AGENT http

    set -gx LLMMAN_RUNTIME bin
    set -gx LLMMAN_LLM_LIBRARY vulkan
    set -gx LLMMAN_IGPU_ENABLE 1
    set -gx LLMMAN_NUM_PARALLEL 1

    fish_vi_key_bindings

    enable_transience
end
