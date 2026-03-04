#!/bin/bash
# Aliases compartidos entre máquinas
# Repo: https://github.com/Rafarafa10/scripts

claude() {
    if [ -n "$TMUX" ]; then
        command claude --dangerously-skip-permissions "$@"
    else
        tmux new-session -A -s claude "claude --dangerously-skip-permissions $*"
    fi
}
alias comfy="cd ~/ia/comfyui/comfyui && source ../venv/bin/activate && python main.py"
