# arte37

 <img src="https://github.com/leeseomin/arte37/blob/main/out/seed0322x37a.jpg" width="2000">
 
 <img src="https://github.com/leeseomin/arte37/blob/main/out/seed0322x37c.jpg" width="2000">


### Dependency install on ubuntu 20.04 


```
 # parallel install
 
 sudo apt install parallel
 
 
   #  gimp gmic install

sudo add-apt-repository ppa:otto-kesselgulasch/gimp-edge

sudo apt-get update

sudo apt-get install gmic gimp-gmic


 #   imagemagick install

sudo apt install graphicsmagick-imagemagick-compat

sudo apt install imagemagick-6.q16


 #  Gmic update filters (follow the link)
 
https://telegra.ph/Gmic-update-filters-07-26

```



### Install

```

git clone https://github.com/leeseomin/arte37

cd arte37

mkdir s{1..25}

-----------------------------------------

### Change the location of the following file to suit your environment in main.sh ###

/home/lee/arte37/logo/mon8.png  =>

/home/yourlogID/arte37/logo/mon8.png


```

### Usage
```
# main 

input images folder : s ,   result folder : s25


bash main3.sh   


# simple hdr effect


bash hdr.sh

```




###  Results




### input image1
 <img src="https://github.com/leeseomin/arte37/blob/main/s/hap.png" width="500">
 
### output image1
 <img src="https://github.com/leeseomin/arte37/blob/main/out/hapx37.png" width="2000">
 <img src="https://github.com/leeseomin/arte37/blob/main/out/hapx37c.jpg" width="2000">


 
 
 
### make animated png result
```
ffmpeg -framerate 1 -pattern_type glob -i '*.png' \
  -c:v libx264 out.mp4
  
  
ffmpeg -i out.mp4 -plays 0  apngout.apng
  
```  
  
  

### License

This repo is made freely available to academic and non-academic entities for non-commercial purposes such as academic research, teaching, scientific publications. Permission is granted to use the arte37 given that you agree to my license terms. Regarding the request for commercial use, please contact me via email (leeseomin@gmail.com)



###  Author

LEE SEOMIN
