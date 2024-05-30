# Krak

## Introduction

**Krak** is a utility designed to enhance your GitKraken experience by seamlessly attaching the current repository to your active user profile in GitKraken. With Krak, you can streamline your workflow and keep your repositories organized and easily accessible within GitKraken.

## Features
- windows support
- Automatically attaches the current repository to your active GitKraken profile.
- Simplifies the process of managing repositories within GitKraken.
- Enhances productivity by reducing the manual steps

## Installation

To install Krak, follow these steps:

1. Open PowerShell with administrative privileges.
2. Run the following command to execute the installation script:
   

```sh {"id":"01HZ29EB62ZQ8703KN73Q9R7MC"}
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/billpoulson/krak/main/install.ps1')
```

This script will download and install Krak on your system.

## Usage
- cd to the repository folder you want to attach to your user profile in GitKraken. `cd ./path/to/git/repo`
- run the command:
   `krak`
- your repo is available in GitKraken.

## Troubleshooting

If you encounter any issues during installation or usage, please refer to the following steps:

1. Ensure you have the necessary permissions to run PowerShell scripts.
2. Verify that your internet connection is stable and that the installation script URL is accessible.
3. Check that GitKraken is installed and properly configured on your system.
   For further assistance, you can reach out to the community or report issues on the [Krak GitHub repository](https://github.com/billpoulson/krak).

## Contributing

We welcome contributions from the community to help improve Krak. If you would like to contribute, please follow these steps:

1. Fork the repository on GitHub.
2. Create a new branch for your feature or bug fix.
3. Commit your changes and push them to your forked repository.
4. Open a pull request on the main repository with a detailed description of your changes.

## License

## Krak is open-source software licensed under the [MIT License](LICENSE).

Thank you for using Krak! We hope it enhances your GitKraken experience and simplifies your repository management. Happy coding!
