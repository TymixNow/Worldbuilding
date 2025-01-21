for dir in ./fonts/*.ttf;
do
    dir=${dir%*".ttf"} 
    dir=${dir#*"/fonts/"} 
    ttf="./fonts/$dir.ttf"
    txt=$dir.txt
    css=$dir.css
    text=$(bash b64.sh $ttf)
    echo $text > $txt
    prefix="@font-face {
    font-family: '$dir';
    src: url(data:font/truetype;charset=utf-8;base64,"
    suffix=') format('truetype');
}'
    echo $prefix > $css
    cat $dir.txt >> $css
    echo $suffix >> $css
    rm $txt
    echo -e "\e[35m $ttf has been converted to $css \e[0m"
done
