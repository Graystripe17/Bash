#!/bin/bash
# Winston Van
    
files=0
directories=0
basename=$( basename $( pwd ) )

dive() {
        for i in $( ls ); do
            echo $i
            #name=$( file -b $i )
            #if [ name == "directory" ]
            if [[ "$( file -b $i )" == "directory" ]]
            then
                (( directories++ ))
                dive $( cd $i ) 
            else
                (( files++ ))
            fi
        done
}

dive

cat<< END
    Found $directories directories
    Found $files files
END
