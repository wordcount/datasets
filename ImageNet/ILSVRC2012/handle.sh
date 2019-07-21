tar xfv ILSVRC2012_img_train.tar -C data/train/
cd data/train
ls|cut -d'.' -f1|xargs -n 1 -P 40 -I {} sh -c 'mkdir {};tar xf {}.tar -C {};echo {}'
ls|grep -v tar|xargs rm -rf
tar xvf ILSVRC2012_img_val.tar -C data/val
tar xvf ILSVRC2012_img_test.tar -C data/test/ 
tar xzvf ILSVRC2012_devkit_t12.tar.gz -C data/devkit
tar xzvf ILSVRC2012_devkit_t3.tar.gz -C data/devkit

unzip ILSVRC2012_bbox_test_dogs.zip -d data/bbox
tar xvf ILSVRC2012_bbox_val_v3.tgz -C data/bbox
tar xzvf ILSVRC2012_bbox_train_dogs.tar.gz -C data/bbox/train_dogs
tar xzvf ILSVRC2012_bbox_train_v2.tar.gz -C data/bbox/train_v2
#img_train_t3
tar xvf ILSVRC2012_img_train_t3.tar -C data/train_t3/
cd data/train_t3
ls|cut -d'.' -f1|xargs -n 1 -P $(nproc) -I {} sh -c 'mkdir {};tar xf {}.tar -C {};echo {}'
