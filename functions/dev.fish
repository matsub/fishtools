function dev -d "cd to a repository registered in ghq"
    set moveto (ghq root)/(ghq list | fzf)
    cd $moveto

    # rename session if in tmux
    if test -n "$TMUX"
        set repo_name (basename $moveto)
        set session_name (string replace -r "\." "-" -- $repo_name)
        tmux rename-session $session_name
    end
end
