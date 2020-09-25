[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<p align="center">
  <h3 align="center">VMware Content Library Builder</h3>

  <p align="center">
    An awesome README template to jumpstart your projects!
    <br />
    <a href="https://github.com/recklessop/vmware-content-library-builder"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/recklessop/vmware-content-library-builder">View Demo</a>
    ·
    <a href="https://github.com/recklessop/vmware-content-library-builder/issues">Report Bug</a>
    ·
    <a href="https://github.com/recklessop/vmware-content-library-builder/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)



<!-- ABOUT THE PROJECT -->
## About The Project

VMware Content Libraries are a great way to store ISO file and VM templates. There are advantages over just uploading them into a datastore.

Here's why:
* You can share them between vSphere environments
* They are the cool new thing?

This script was designed because I had a lot of ISOs to upload to lab environments when I create them. This allows me to upload the same ISOs to various labs each time I create one.

### Built With

* [Powershell](https://docs.microsoft.com/en-us/powershell/)
* [PowerCLI](hhttps://code.vmware.com/web/tool/12.0.0/vmware-powercli)


<!-- GETTING STARTED -->
## Getting Started

Getting started is easy! You will need Powershell and PowerCLI. After that simply clone the repo or copy the script to your machine. Then edit the script with the appropriate parameters, save the script, and run it. That's it!

### Prerequisites

In a Powershell terminal Install PowerCLI if you dont already have it. I recommend updating to the latest Powershell too.
* PowerShell
```sh
Invoke-Expression "& { $(Invoke-Restmethod https://aka.ms/install-powershell.ps1) } -UseMSI -Preview"
```

* PowerCLI
```sh
Install-Module -Name VMware.PowerCLI
```

### Installation

1. Clone the repo to the machine where your ISOs are at.
```sh
git clone https://github.com/recklessop/vmware-content-library-builder.git
```

<!-- USAGE EXAMPLES -->
## Usage

Before running the script, edit the parameters at the top of the Powershell script

Clone the repo to the machine where your ISOs are at.
```sh
git clone https://github.com/recklessop/vmware-content-library-builder.git
```


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.


<!-- CONTACT -->
## Contact

Your Name - [@recklessop](https://twitter.com/recklessop) - justin@jpaul.me

Project Link: [https://github.com/recklessop/vmware-content-library-builder](https://github.com/recklessop/vmware-content-library-builder)


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/recklessop/vmware-content-library-builder.svg?style=flat-square
[contributors-url]: https://github.com/recklessop/vmware-content-library-builder/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/recklessop/vmware-content-library-builder.svg?style=flat-square
[forks-url]: https://github.com/recklessop/vmware-content-library-builder/network/members
[stars-shield]: https://img.shields.io/github/stars/recklessop/vmware-content-library-builder.svg?style=flat-square
[stars-url]: https://github.com/recklessop/vmware-content-library-builder/stargazers
[issues-shield]: https://img.shields.io/github/issues/recklessop/vmware-content-library-builder.svg?style=flat-square
[issues-url]: https://github.com/recklessop/vmware-content-library-builder/issues
[license-shield]: https://img.shields.io/github/license/recklessop/vmware-content-library-builder.svg?style=flat-square
[license-url]: https://github.com/recklessop/vmware-content-library-builder/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/jpaul84/