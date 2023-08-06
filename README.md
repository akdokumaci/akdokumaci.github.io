# Hello

Greetings, I'm Kamil, a software engineer (not a data-scientist) with a strong background in site reliability engineering, distributed computing and an interest in AI powered technology. Throughout my career, I've been dedicated to building robust and scalable solutions that drive seamless user experiences. With a passion for innovation and a keen eye for detail, I thrive in challenging environments where I can leverage my expertise to tackle complex technical problems. My commitment to continuous learning and a collaborative approach has allowed me to contribute effectively to diverse teams and deliver exceptional results. 

## Versatile Expertise
### Things I Use
- __Languages__
    - [Python]() ❤️❤️❤️
    - [Golang]() ❤️❤️
    - [Java]() ❤️

- __Monitoring__
    - [Elasticsearch](https://www.elastic.co)
    - [Prometheus](https://prometheus.io)
    - [Fluentbit]()
    - [Loki]()
    - [Grafana]()
    - [Tempo]()
    - [OpenTelemetry]()

- Cloud Native Software
    - [Kubernetes]() 
    - [Helm]()
    - [Argo]()
    - [Linkerd]()

- Cloud Platforms
    - Azure
    - AWS
    - GCP

- Databases
 - [Postgresql]()
 - [MongoDB]()
 - [MySQL]()
 - [Cassandra]()

- Apache Projects
    - [Apache Spark](https://spark.apache.org)
    - [Kafka]()
    - [Flink]()

- AI Tech 
    - [MLFlow]()
    - [Databricks]()
    - [Kubeflow]()

## Stuff that I like
- [GNU](https://www.gnu.org/home.en.html)
- [Apache Echarts]()
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [Synthetic Data]()
- [Datagen](https://datagen.tech)


### MacOS terminal set up script
```
#!/bin/bash

# Check for Homebrew
if test ! $(which brew); then
    echo "Installing Homebrew..."
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew already installed."
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
ZSH_THEME="powerlevel10k/powerlevel10k"
# Path to the ZSH config file
ZSH_CONFIG_FILE="$HOME/.zshrc"
# Check if ZSH_THEME is present
if grep -q "ZSH_THEME" $ZSH_CONFIG_FILE; then
  # ZSH_THEME found, so replace it
  sed -i '/ZSH_THEME/c\ZSH_THEME="powerlevel10k/powerlevel10k"' $ZSH_CONFIG_FILE
else
  # ZSH_THEME not found, so add it
  echo 'ZSH_THEME="powerlevel10k/powerlevel10k"' >> $ZSH_CONFIG_FILE
fi
 
git clone https://github.com/Dbz/kube-aliases.git ~/.oh-my-zsh/custom/plugins/kube-aliases
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "plugins+=( git zsh-syntax-highlighting zsh-autosuggestions kube-aliases)" >> ~/.zshrc
brew install --cask iterm2
open -a iTerm .
```