if status is-interactive
    # Commands to run in interactive sessions can go here
end

# exa - ls replacement
alias l="exa --sort Name"
alias ls="exa --sort Name"
alias ll="exa --sort Name --long"
alias la="exa --sort Name --long --all"
alias lr="exa --sort Name --long --recurse"
alias lra="exa --sort Name --long --recurse --all"
alias lt="exa --sort Name --long --tree --recurse --level=3"
alias lta="exa --sort Name --long --tree --all --recurse --level=3"
