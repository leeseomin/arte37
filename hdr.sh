parallel --no-notice rm -r ::: s1/* s2/* s3/* s4/* s5/* s6/* s7/* s8/* s9/* s10/* s11/* s12/* s13/*
parallel --no-notice rm -r ::: s14/* s15/* s16/* s17/* s18/* s19/* s20/* s21/* s22/* s23/* s24/* s25/*
cd s
for i in *.*; do
convert $i  -set filename:new ../s25/"%t" "%[filename:new].jpg"
done
cd ..
cd s
for i in *.* 
do 
convert -modulate 100,150,100 $i ../s1/$i
done
cd ..
cd s1
for i in *.* 
do 
gmic -input $i -fx_AbstractFlood 1,10,7,2,0,10,5,3,255,255,255,255,0,300,10,90,0.7,0,0,0 -o ../s6/$i 
done
cd .. 
cd s6
for i in *.*; do
   convert $i  -set filename:new ../s25/"%tcpu1" "%[filename:new].png"
done



