set PIP (which pip)
function pip
    switch $argv[1]
        case install bundle
            PIP $argv[1] --user $argv[2..-1]
        case '*'
            PIP $argv
    end
end
