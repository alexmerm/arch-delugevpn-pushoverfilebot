@echo on
docker-compose pull
docker-compose build --no-cache --pull
docker-compose down
docker-compose up -d 
echo "Done press enter to exit"
pause
