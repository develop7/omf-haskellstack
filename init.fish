if type -q stack
    set -l local_bin_path (stack path --local-bin)

    contains -- $local_bin_path $PATH
        or set -gx PATH $local_bin_path
else
    echo "Stack is not in \$PATH"
end