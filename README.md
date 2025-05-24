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

## Key Considerations

- Its assume that the folder name for this repo in your machine is librenms-plugin-kafka-devcontainer
  - otherwise, update the <code>.devcontainer/scripts/config.sh</code> the plugin url path to the correct folder.
- When changing the config, to apply, first remove from delete de config file and generate it again

```sh
cd /opt/librenms
rm /opt/librenms/config/kafkastore-plugin.php
./lnms vendor:publish --provider="KafkaStore\LibrenmsKafkaStorePlugin\KafkaStorePluginProvider"
```