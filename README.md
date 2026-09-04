# Docker Configuration

## Install Docker Desktop
You can use the install_docker.ps1 powershell script to install docker
If doing so ensure you are using an **administrative prompt**
- Click on your Start Windows Icon
- Search for Powershell
- Right-Click on Powershell and select `Run as Administrator`
- Then cd to the directory this repository lives in

```
& BuildTools\scripts\install_docker.ps1
```

When installing docker desktop, it will enable the WSL feature, since we run docker on wsl

**Notes:**
- If WSL wasn't previously enabled you will need to restart and run the installer a second time to ensure
WSL is installed and available for Docker
- Your computer must also support Virtualization which is a BIOS setting, if it's not enabled, you man need to enable it
  within your BIOS settings

## VSCode
**_Docker Desktop must be installed first_**

### Deploy Docker Compose Stack

Expand the BuildTools Folder

Right-Click docker-compose.yml and click compose up

> Note: For windows users
> 
> There is a compose_project.ps1 script that will standup and destroy the docker compose project for you
> Run ./BuildTools/scripts/compose_project.ps1 in Powershell to read how to use it

### Connecting to a container with VSCode

Ensure you have the Container Tools extension by Microsoft installed

- Click on the ContainerTools icon in your sidebar. ![Container Tools Icon](readme_images/container_tools.png)
- Expand the "Containers" section
- Expand the rubyintro project
- Right-click on the nodejs or ruby_intro container that's running
- Select "Attach Visual Studio Code"
  - this will launch a new VS Code instance that is running within the container

You are now able to interact with the docker container's code directly

## Running Tests on NodeJS container
- Connect to the NodeJS container
- Install the Vitest Extension
- After you install the vitest extension it will ask you to restart vscode to see the extension
- Press CTRL + SHIFT + P to open the command palet
- Enter "Developer: Restart Extension Host", this will reload the vscode instance connected to the container
- When you see "Cannot reconnect. Please reload the window." Press "Reload Window"

Write your typescript file and test file.  An example .ts and .test.ts is included

To run a test, click on the Run/Debug icon in the left navbar. ![Run Debug Icon](readme_images/run_debug.png)

Click the green play button at the top of the screen beside Run and Debug.

Beside the play button there's a dropdown.  Select `Node.js...` then select `Run Script test`

The call stack will show the tests running.  The bottom center of the screen will show a DEBUG CONSOLE

Your test results will then be displayed in the terminal window tab.

> NOTE:
> 
> From the `Node.js...` selection you can also select `Run Script test:watch`.
> This will watch your changes and when you press save the tests immediatly run.

To stop a test at the top center of the screen press the stop icon.

## Running Tests on the Ruby_Intro container
- Connect to the Ruby_Intro container
- Install the Ruby LSP Extension
- After you install the Ruby LSP extension you should see it in the sidebar ![alt text](readme_images/ruby_testing.png)

Write your ruby file and spec file.  Spec files go in the spec folder suffixed with _spec.rb.
An example .rb and _spec.rb file is included in the container.

To run a test, Right-click on the spec folder and select Run Tests

The terminal window will open and run the tests showing you the output of your tests.

If you have errors, you can open your _spec.rb file and it'll give you an indication of what group of tests are failing.

You can also see how your tests performed by expanding the Ruby LSP extension and navicate the spec tree displayed after you've ran the test.


## Tear down the docker project

You will receive a couple of prompts when stopping the compose project.

```powershell
.\BuildTools\scripts\compose_project.ps1 -Stop
```
