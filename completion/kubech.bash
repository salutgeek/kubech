# Bash autocompletion for kubech commands.

# Auto complete for "kctx" command.
_kctx_completions() {
    COMPREPLY=($(compgen -W "$(kctx | tr '\n' ' ')" "${COMP_WORDS[1]}"))
}

complete -F _kctx_completions kctx

# Auto complete for "kubechn" command.
_kns_completions() {
    COMPREPLY=($(compgen -W "$(kns | tr '\n' ' ')" "${COMP_WORDS[1]}"))
}

complete -F _kns_completions kns
