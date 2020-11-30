i=0
tot=19
while [ $i -le $tot ]
do
    ind=`printf %03d $i`
    echo $ind
    relion_image_handler --i frame_${ind}.mrc --o frame_${ind}_flipZ.mrc --flipZ
    let "i+=1"
done
