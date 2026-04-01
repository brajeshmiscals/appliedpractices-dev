# appliedpractices-dev
Repository for developer training

Reference repo: https://github.com/brajeshmiscals/appliedpractices-dev

1.Clone the repo: git clone https://github.com/brajeshmiscals/appliedpractices-dev.git (Create README.md and .gitignore files)

2. Create a Spring-Boot project with web and DevTools and download as zip ( Use this portal to generate project: https://start.spring.io/ )

3. Navigate to the root of clonned repo and extract downloaded code from step2 and remove the zip folder.

4. Modify the main method/ create a controller (refer codelink above)

5. Go to application.properties and define server.port (=9090)

6. Build your project using maven (mvn clean install -DskipTests)

7. Run your project from intellij. 

8. Go to browser and hit : localhosts:9090/home, you should see the message defined in contoller class.

9. Create a script (bash) to run this project from command line. 

10. Run the script using ./runner.sh

11. Create .gtihub/workflow folder structure at root of your codebase

12. Create a github-actions yaml file to auto-trigger the pipeline.

Note: Generate javadoc using :: mvn javadoc:javadoc


Run below commands to setup a self-hosted (linux runner)

mkdir actions-runner && cd actions-runner

curl -o actions-runner-linux-x64-2.333.1.tar.gz -L https://github.com/actions/runner/releases/download/v2.333.1/actions-runner-linux-x64-2.333.1.tar.gz

echo "18f8f68ed1892854ff2ab1bab4fcaa2f5abeedc98093b6cb13638991725cab74  actions-runner-linux-x64-2.333.1.tar.gz" | shasum -a 256 -c actions-runner-linux-x64-2.333.1.tar.gz: OK

tar xzf ./actions-runner-linux-x64-2.333.1.tar.gz

./config.sh --url https://github.com/brajeshmiscals/appliedpractices-dev --token B7FXQBXBWNCNJXNRWUXZYOLJZS5T2

You will be asked some questions, keep hitting enter to set default values. In the last hit: 

./run.sh
