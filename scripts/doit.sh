  CDB_USER='bracket'
API_KEY='d17d09d66ff153c94bb8d2685a6ffb62d4faeb3a'
INTERSECTIONS='intersections'
RAMPS='ramps'
CDB_COMMENTS='comments'
CDB_DOWNLOAD_FORMAT='shp'  #shapefile, geojson, csv
CDB_DOWNLOAD_DIR='/c/workspace/lloydtma/LloydDistrict'
  job_id1=`curl -o intersections.zip\
    -d "q=SELECT * FROM intersections &api_key=${API_KEY}" http://${CDB_USER}.cartodb.com/api/v2/sql?format=shp"`