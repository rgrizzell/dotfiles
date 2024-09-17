function auto-venv --on-variable PWD --description "Automatically activates the virtual environment when inside Python project directories."
    set REPO_ROOT (git rev-parse --show-toplevel 2>/dev/null)
    if test -z "$REPO_ROOT"; and test -n "$VIRTUAL_ENV"
        deactivate
    end
    if test "$VIRTUAL_ENV" = "$REPO_ROOT/.venv"
        return
    end
    if test -d "$REPO_ROOT/.venv"
        source "$REPO_ROOT/.venv/bin/activate.fish" &>/dev/null
    end
end
