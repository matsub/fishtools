function dict -d "translate English and Japanese"
    for arg in $argv
        switch $arg
        case -I --install
            pushd $XDG_CONFIG_HOME/fisherman/fishtools
            git submodule init
            git submodule update
            pushd ejtrans
            python init_dict.py
            popd
            popd
            return
        case '*'
            set word $arg
        end
    end

    # execute dictionary
    python $XDG_CONFIG_HOME/fisherman/fishtools/ejtrans/dictionary.py $word
end
