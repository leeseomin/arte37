parallel --no-notice rm -r ::: s1/* s2/* s3/* s4/* s5/* s6/* s7/* s8/* s9/* s10/* s11/* s12/* s13/*
parallel --no-notice rm -r ::: s14/* s15/* s16/* s17/* s18/* s19/* s20/* s21/* s22/* s23/* s24/* s25/*
cd s
parallel convert {} -resize 2500x2500 {.}.png ::: *.* 
rm *.jpg
rm *.JPG
parallel convert {} ../s25/{} ::: *.*
cd ..
cd s
for i in *.* 
do 
convert $i /home/lee/arte27/logo/mon8.png -alpha set  -compose screen -composite ../s9/$i 
done 
cd ..
cd s9
parallel gmic {} -fx_rays_from_image 5.5,50,50,0,0 -o ../s9/{} ::: *.*
cd ..
cd s9
parallel convert {}  -set filename:new  ../s25/"%tmon7ray" "%[filename:new].png" ::: *.*
cd ..
cd s9
for i in *.* 
do 
convert $i /home/lee/arte37/logo/mon8.png -alpha set  -compose darken -composite ../s10/$i 
done 
cd ..
cd s10
for i in *.* 
do 
convert -modulate 100,250,100 $i ../s1/$i
done
cd ..
cd s1
for i in *.* 
do 
convert $i ../s10/$i -alpha set -channel A -evaluate set 100% -compose softlight -composite ../s3/$i 
done 
cd ..
cd s3
parallel gmic {} -fx_AbstractFlood 1,10,7,2,0,10,5,3,255,255,255,255,0,300,10,90,0.7,0,0,0 -o ../s6/{} ::: *.*
cd .. 
cd s6
for i in *.*; do
   convert $i  -set filename:new ../s25/"%tmon7cpu1" "%[filename:new].png"
done
cd ..
cd s6
for i in *.*
do
gmic $i -fx_custom_deformation "(w+h)/20*cos(y*20/h)","(w+h)/20*sin(x*20/w)",1,1,3 -o ../s15/$i
done
cd ..
cd s15
parallel convert {}  -set filename:new  ../s25/"%tmon7cpu1_cartesian_transform" "%[filename:new].png" ::: *.*
cd ..
cd s15
for i in *.*
do
gmic $i -fx_custom_deformation "(w+h)/20*cos(y*20/h)","(w+h)/20*sin(x*20/w)",1,1,3 -o ../s17/$i
done
cd ..
cd s17
parallel convert {}  -set filename:new  ../s25/"%tmon7cpu1_cartesian_transform_3x" "%[filename:new].png" ::: *.*
cd ..
cd s17
for i in *.*; do
convert  $i -set option:size '%[fx:min(w,h)]x%[fx:min(w,h)]' xc:none +swap -gravity center -composite -resize 3000x3000 $i 
done
cd ..
cd s17
parallel gmic {} -fx_rotate_tileable 45,8,0 -o ../s2/{} ::: *.*
cd .. 
cd s2
parallel convert {} -gravity Center -crop 94%  ../s2/{} ::: *.* 
cd ..
cd s2
for i in *.*; do
   convert $i  -set filename:new ../s25/"%txx" "%[filename:new].png"
done


