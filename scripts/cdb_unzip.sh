#!/bin/bash 
# to unzip files downloaded from cartodb

CDB_DOWNLOAD_DIR='/c/workspace/lloydtma/LloydDistrict'


cd ${CDB_DOWNLOAD_DIR}


for SHP_NAME in  `ls -1 *.zip`; do
   TMP_SHP=`basename ${SHP_NAME} .zip`
   rm -rf ${CDB_DOWNLOAD_DIR}/${TMP_SHP}
   #rmdir ${CDB_DOWNLOAD_DIR}/${TMP_SHP}
   mkdir ${CDB_DOWNLOAD_DIR}/${TMP_SHP} && unzip -uo $SHP_NAME -d $TMP_SHP

   
   for FILE_EXTENSION in cpg dbf prj shp shx; do
      echo ${TMP_SHP}/${TMP_SHP}.${FILE_EXTENSION}
      mv ${TMP_SHP}/cartodb-query.${FILE_EXTENSION}\
      ${TMP_SHP}/${TMP_SHP}.${FILE_EXTENSION}
   done 
 done

exit 0

