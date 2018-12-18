function pip3
    set PIP3 (which pip3) 
    switch $argv[1]
        case install bundle
            PIP3 $argv[1] --user $argv[2..-1]
        case '*'
            PIP3 $argv
    end
end
