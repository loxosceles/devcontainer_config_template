#Devcontainer Configuration Template

This template provides a blueprint for a development container for Javascript and Python based projects.

This template includes [Chezmoi](https://www.chezmoi.io/) to automatically pull your own dot files.

## How to use 

- Clone this repo in the root of your project:

```
git clone https://github.com/loxosceles/devcontainer_config_template .devcontainers
```

- Remove the `.git` folder inside `.devcontainer`.

```
rm -rf .devcontainer/.git
```

- Update the `chezmoi.toml` file at the root of this project with your own email address and name.
- Create or locate your own private dotfiles repository in your personal github account.
- Open the devcontainer.json and replace the placeholder under "containerDev -> CHEZMOI_DOTFILES_REPOSITORY" with your dotfiles repository.
