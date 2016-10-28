if [[ $(mdls -name kMDItemNumberOfPages j_kiely_cv.pdf) != "kMDItemNumberOfPages = 1" ]]
    then
        echo "The pdf is too long"
fi
