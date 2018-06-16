function dict -d "translate English and Japanese"
    for arg in $argv
        switch $arg
        case -I --init
            pushd $XDG_CONFIG_HOME/fisherman/fishtools
            # install ejtrans
            git submodule init; git submodule update
            pushd ejtrans
            # install EJDict
            git submodule init; git submodule update
            python3 init_dict.py
            popd
            popd
            return
        case '*'
            set word $arg
        end
    end

    # execute dictionary
    python3 $XDG_CONFIG_HOME/fisherman/fishtools/ejtrans/dictionary.py $word
end
