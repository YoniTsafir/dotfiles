function pip
    set PIP (which pip) 
    switch $argv[1]
        case install bundle
            PIP $argv[1] --user $argv[2..-1]
        case '*'
            PIP $argv
    end
end
