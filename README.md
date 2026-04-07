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


Setup vault:

Step 1: Download Vault
Step3: set env var
Step 2: Start Vault (Git Bash):
export VAULT_ADDR='http://127.0.0.1:8200'
./vault.exe server -dev
Step3: Set Token:
export VAULT_ADDR='http://127.0.0.1:8200'
export VAULT_TOKEN='ur_token_value'
Step4: Store Your Secrets:
./vault.exe kv put secret/myapp PDF_PASSWORD=<ur_password>
Step5: Verify:
./vault.exe kv get secret/myapp

Set env variable for vault:
mkdir -p /c/temp/vault
nano /c/temp/vault/pdf-config

pdf.password=mySecret123
pdf.path=/C/Users/brajesh.mishra/Downloads/paf_name.pdf


Add env  variable: 
Add Vault to PATH
Move vault.exe to a directory like:
C:\temp\vault -- Set this to env var in your machine

vault kv put secret/myapp pdf.password=<ur_password> pdf.path=<ur_pdf_path>
vault kv put secret/application pdf.password=<ur_password> pdf.path=<ur_pdf_path>


Test with this:

http://localhost:9090/vault
