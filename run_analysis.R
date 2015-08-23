## Actividad de trabajo "Getting and Cleaning Data"
## La estrategia para realizar esta actividad ha sido crear un SET que mantiene la estructura y orden 
## establecido por los datos proporcionados, as??:
## SET = TEST + TRAIN
## Posteriormente, se forma el dataset desde el cual se realizan todos los ejercicios requeridos

## 1.- CREAR SET

library(data.table)
library(dplyr)

## definicion de directorios de trabajo
DirMain <- "~/Desktop/DataScience/UCI HAR Dataset-2"
DirTest <- "~/Desktop/DataScience/UCI HAR Dataset-2/test"
DirTrain <- "~/Desktop/DataScience/UCI HAR Dataset-2/train"
DirSet <- "~/Desktop/DataScience/UCI HAR Dataset-2/Set"
DirIneSig <- "Inertial Signals"

## creaci??n de directorios del SET
dir.create("~/Desktop/DataScience/UCI HAR Dataset-2/Set")
dir.create("~/Desktop/DataScience/UCI HAR Dataset-2/Set/Inertial Signals")

## Unir archivos de directorio Inertial Signals en concatenacion vertical

## body_acc_x_set = body_acc_x_train + body_acc_x_test
file1 <- read.table(paste(c(DirTrain,DirIneSig,"body_acc_x_train.txt"), collapse = "/"), header=FALSE)
file2 <- read.table(paste(c(DirTest,DirIneSig,"body_acc_x_test.txt"), collapse = "/"), header=FALSE)
body_acc_x_set <- rbind(file1,file2, header=FALSE)
write.table(body_acc_x_set,file = paste(c(DirSet,DirIneSig,"body_acc_x_set.txt"), collapse = "/"),sep=" ")

## body_acc_y_set = body_acc_y_train + body_acc_y_test
file1 <- read.table(paste(c(DirTrain,DirIneSig,"body_acc_y_train.txt"), collapse = "/"), header=FALSE)
file2 <- read.table(paste(c(DirTest,DirIneSig,"body_acc_y_test.txt"), collapse = "/"), header=FALSE)
body_acc_y_set <- rbind(file1,file2, header=FALSE)
write.table(body_acc_y_set,file = paste(c(DirSet,DirIneSig,"body_acc_y_set.txt"), collapse = "/"),sep=" ")

## body_acc_z_set = body_acc_z_train + body_acc_z_test
file1 <- read.table(paste(c(DirTrain,DirIneSig,"body_acc_z_train.txt"), collapse = "/"), header=FALSE)
file2 <- read.table(paste(c(DirTest,DirIneSig,"body_acc_z_test.txt"), collapse = "/"), header=FALSE)
body_acc_z_set <- rbind(file1,file2, header=FALSE)
write.table(body_acc_z_set,file = paste(c(DirSet,DirIneSig,"body_acc_z_set.txt"), collapse = "/"),sep=" ")

## body_gyro_x_set = body_gyro_x_train + body_gyro_x_test
file1 <- read.table(paste(c(DirTrain,DirIneSig,"body_gyro_x_train.txt"), collapse = "/"), header=FALSE)
file2 <- read.table(paste(c(DirTest,DirIneSig,"body_gyro_x_test.txt"), collapse = "/"), header=FALSE)
body_gyro_x_set <- rbind(file1,file2, header=FALSE)
write.table(body_gyro_x_set,file = paste(c(DirSet,DirIneSig,"body_gyro_x_set.txt"), collapse = "/"),sep=" ")

## body_gyro_y_set = body_gyro_y_train + body_gyro_y_test
file1 <- read.table(paste(c(DirTrain,DirIneSig,"body_gyro_y_train.txt"), collapse = "/"), header=FALSE)
file2 <- read.table(paste(c(DirTest,DirIneSig,"body_gyro_y_test.txt"), collapse = "/"), header=FALSE)
body_gyro_y_set <- rbind(file1,file2, header=FALSE)
write.table(body_gyro_y_set,file = paste(c(DirSet,DirIneSig,"body_gyro_y_set.txt"), collapse = "/"),sep=" ")

## body_gyro_z_set = body_gyro_z_train + body_gyro_z_test
file1 <- read.table(paste(c(DirTrain,DirIneSig,"body_gyro_z_train.txt"), collapse = "/"), header=FALSE)
file2 <- read.table(paste(c(DirTest,DirIneSig,"body_gyro_z_test.txt"), collapse = "/"), header=FALSE)
body_gyro_z_set <- rbind(file1,file2, header=FALSE)
write.table(body_gyro_z_set,file = paste(c(DirSet,DirIneSig,"body_gyro_z_set.txt"), collapse = "/"),sep=" ")

## total_acc_x_set = total_acc_x_train + total_acc_x_test
file1 <- read.table(paste(c(DirTrain,DirIneSig,"total_acc_x_train.txt"), collapse = "/"), header=FALSE)
file2 <- read.table(paste(c(DirTest,DirIneSig,"total_acc_x_test.txt"), collapse = "/"), header=FALSE)
total_acc_x_set <- rbind(file1,file2, header=FALSE)
write.table(total_acc_x_set,file = paste(c(DirSet,DirIneSig,"total_acc_x_set.txt"), collapse = "/"),sep=" ")

## total_acc_y_set = total_acc_y_train + total_acc_y_test
file1 <- read.table(paste(c(DirTrain,DirIneSig,"total_acc_y_train.txt"), collapse = "/"), header=FALSE)
file2 <- read.table(paste(c(DirTest,DirIneSig,"total_acc_y_test.txt"), collapse = "/"), header=FALSE)
total_acc_y_set <- rbind(file1,file2, header=FALSE)
write.table(total_acc_y_set,file = paste(c(DirSet,DirIneSig,"total_acc_y_set.txt"), collapse = "/"),sep=" ")

## total_acc_z_set = total_acc_z_train + total_acc_z_test
file1 <- read.table(paste(c(DirTrain,DirIneSig,"total_acc_z_train.txt"), collapse = "/"), header=FALSE)
file2 <- read.table(paste(c(DirTest,DirIneSig,"total_acc_z_test.txt"), collapse = "/"), header=FALSE)
total_acc_z_set <- rbind(file1,file2, header=FALSE)
write.table(total_acc_z_set,file = paste(c(DirSet,DirIneSig,"total_acc_z_set.txt"), collapse = "/"),sep=" ")

## x_set = x_train + x_test
file1 <- read.table(paste(c(DirTrain,"x_train.txt"), collapse = "/"), header=FALSE)
file2 <- read.table(paste(c(DirTest,"x_test.txt"), collapse = "/"), header=FALSE)
x_set <- rbind(file1,file2, header=FALSE)
write.table(x_set,file = paste(c(DirSet,"x_set.txt"), collapse = "/"),sep=" ")

## y_set = y_train + y_test
file1 <- read.table(paste(c(DirTrain,"y_train.txt"), collapse = "/"), header=FALSE)
file2 <- read.table(paste(c(DirTest,"y_test.txt"), collapse = "/"), header=FALSE)
y_set <- rbind(file1,file2, header=FALSE)
write.table(y_set,file = paste(c(DirSet,"y_set.txt"), collapse = "/"),sep=" ")

## subject_set = subject_train + subject_test
file1 <- read.table(paste(c(DirTrain,"subject_train.txt"), collapse = "/"), header=FALSE)
file2 <- read.table(paste(c(DirTest,"subject_test.txt"), collapse = "/"), header=FALSE)
subject_set <- rbind(file1,file2, header=FALSE)
write.table(subject_set,file = paste(c(DirSet,"subject_set.txt"), collapse = "/"),sep=" ")


## Unir archivos de Inertial Signals en concatenaci??n vertical , y se da nombre a columnas

body_acc_set <- rbind(body_acc_x_set,body_acc_y_set,body_acc_z_set)
v_nomset <- NULL
for (i in 1:128) { tmp <- paste("body_acc_",i,sep = ""); v_nomset <- c(v_nomset, tmp)}
body_acc_set_names <- setNames(body_acc_set, v_nomset)
write.table(body_acc_set_names,file = paste(c(DirSet,DirIneSig,"body_acc_set.txt"), collapse = "/"),sep=" ")

body_gyro_set <- rbind(body_gyro_x_set,body_gyro_y_set,body_gyro_z_set)
v_nomset <- NULL
for (i in 1:128) { tmp <- paste("body_gyro_",i,sep = ""); v_nomset <- c(v_nomset, tmp)}
body_gyro_set_names <- setNames(body_gyro_set, v_nomset)
write.table(body_gyro_set_names,file = paste(c(DirSet,DirIneSig,"body_gyro_set.txt"), collapse = "/"),sep=" ")

total_acc_set <- rbind(total_acc_x_set,total_acc_y_set,total_acc_z_set)
v_nomset <- NULL
for (i in 1:128) { tmp <- paste("total_acc_",i,sep = ""); v_nomset <- c(v_nomset, tmp)}
total_acc_set_names <- setNames(total_acc_set, v_nomset)
write.table(total_acc_set_names,file = paste(c(DirSet,DirIneSig,"total_acc_set.txt"), collapse = "/"),sep=" ")

## Unir archivos de Inertial Signals en concatenaci??n horizontal

InertialSignals_set_names <- cbind(body_acc_set_names,body_gyro_set_names,total_acc_set_names)
write.table(InertialSignals_set_names,file = paste(c(DirSet,"InertialSignal_set.txt"), collapse = "/"),sep=" ")

## Poner nombre a columnas de archivos

features <- read.table(paste(c(DirMain,"features.txt"), collapse = "/"), header=FALSE)
features[,3] <- paste(features[,2],features[,1], sep="/") 
v_nomset <- t(features[,3])
x_set_names <- setNames(x_set, v_nomset)

v_nomset <- c("cod_activity")
y_set_names <- setNames(y_set,v_nomset)

v_nomset <- c("subject")
subject_set_names <- setNames(subject_set, v_nomset)

## Formacion de arhivo final en concatenacion horizontal

analysis_set_names <- cbind(InertialSignals_set_names, x_set_names, y_set_names, subject_set_names)
write.table(analysis_set_names,file = paste(c(DirSet,"analysis_set.txt"), collapse = "/"),sep=" ")


## 2.- Promedio y desviaci??n standard

mean_set <- apply(analysis_set_names, 2, mean)
sd_set <- apply(analysis_set_names, 2, sd)

## 3.- Incorporar la glosa de texto al codigo de la actividad

activity_labels <- read.table(paste(c(DirMain,"activity_labels.txt"), collapse = "/"), header=FALSE)
v_nomset <- c("cod_activity","activity")
activity_labels_names <- setNames(activity_labels, v_nomset)
analysis_data_set <- merge(analysis_set_names,activity_labels_names)

## 5.- requiere de los datos resultantes del Merge

analysis_data_set_gr <- group_by(analysis_data_set,subject, activity)
set_data_2 <- summarise_each(analysis_data_set_gr, funs(mean))
write.table(set_data_2,file = paste(c(DirSet,"analysis_set_2.txt"), collapse = "/"),sep=" ",row.name=FALSE)

## FIN  :)
