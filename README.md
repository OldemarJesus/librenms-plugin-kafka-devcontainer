# librenms-plugin-kafka-devcontainer

## Load Submodule

```sh
# do not forget to load submodule after clone
git submodule update --init --recursive
```

## Configuration

```sh
cd .devcontainer
cp .env.example .env
sed -i 's/MYSQL_ROOT_PASSWORD=/MYSQL_ROOT_PASSWORD=somesecretstrongpassword/g' .env
```