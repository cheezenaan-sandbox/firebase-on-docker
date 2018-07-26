# Firebase on docker

## Getting started

### Initalize firebase

```sh
cp .firebaserc.sample .firebaserc
cp .env.sample .env

# Use FIREBASE_TOKEN to deploy
./docker/firebase login
echo FIREBASE_TOKEN=1/xxxxxx | tee -a .env >/dev/null

./docker/firebase init
```
