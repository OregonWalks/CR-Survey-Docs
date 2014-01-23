#!/bin/bash 
# based on notes here:
# http://support.cartodb.com/discussions/questions/608-shell-script-drop-table-then-import-table

 
CDB_USER='bracket'
API_KEY='d17d09d66ff153c94bb8d2685a6ffb62d4faeb3a'
INTERSECTIONS='intersections'
RAMPS='ramps'
CDB_COMMENTS='comments'
CDB_DOWNLOAD_FORMAT='shp'  #shapefile, geojson, csv
CDB_DOWNLOAD_DIR='/c/workspace/lloydtma/LloydDistrict'

SHAPEFILES="${INTERSECTIONS} ${RAMPS}"

echo $CDB_USER
echo $API_KEY
echo $CDB_TABLE
echo $CDB_TABLE2
cd ${CDB_DOWNLOAD_DIR}

if [[ -z $CDB_USER ]]
then
  echo "Missing user"
  exit
fi
if [[ -z $API_KEY ]]
then
  echo "Missing api key"
  exit
fi
if [[ -z $INTERSECTIONS ]]
then
  echo "Missing intersections info"
  exit
fi
 



echo "importing intersections and ramps from cartodb", ${CDB_USER}
for table in $SHAPEFILES; do
  job_id1=`curl -o ${table}.zip\
    -d  "http://${CDB_USER}.cartodb.com/${SHAPEFILE}?format=${CDB_DOWNLOAD_FORMAT} "`
done



echo "Waiting for job ${job_id1} to be completed..."
ls -alt ${CDB_DOWNLOAD_DIR} | head -6
 exit 0



