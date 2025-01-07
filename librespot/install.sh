#!/bin/bash

# Vérifier si Java est installé
if ! command -v java &> /dev/null; then
    echo "Java n'est pas installé. Installation..."
    sudo apt-get update
    sudo apt-get install -y default-jre
fi

# Créer les répertoires nécessaires
mkdir -p player config logs

# Télécharger la dernière version de librespot-java
wget https://github.com/librespot-org/librespot-java/releases/download/v1.6.3/librespot-java-1.6.3.jar -O player/librespot-java.jar

# Créer le fichier de configuration par défaut
cat > config/config.toml << EOL
[player]
deviceName = "Raspberry Pi Player"
autoplay = true

[cache]
enabled = true
dir = "./cache"

[auth]
strategy = "ZEROCONF"
EOL

# Créer le script de démarrage
cat > start.sh << EOL
#!/bin/bash
java -jar player/librespot-java.jar --conf-file=config/config.toml
EOL

# Rendre les scripts exécutables
chmod +x start.sh

echo "Installation terminée !"