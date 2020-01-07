if [$REPOSITORY != ""]
then
    git clone $REPOSITORY ./src/

    npm install
    npm run build
fi

http-server -p 80 ./src/dist/