#Devcontainer Configuration Template

Build a development container for Javascript and Python based projects.

This template includes [Chezmoi](https://www.chezmoi.io/) to automatically pull your own dot files.

## How to use 

- Clone this repo in the root of your project.
- Rename this local folder to `.devcontainer`.
- Remove the `.git/` folder inside `.devcontainer`.
- Update the `chezmoi.toml` file at the root of this project with your own email address and name.
- Create or locate your own dotfiles repository.
- Open the devcontainer.json and replace the placeholder under "containerDev -> CHEZMOI_DOTFILES_REPOSITORY" with your dotfiles repository.

