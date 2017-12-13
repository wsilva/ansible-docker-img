# What

Ansible image based on alpine Linux

# Install

~~~bash
echo "alias ansible='docker run -ti --rm --entrypoint ansible --volume \"$HOME/.aws\":/root/.aws --volume $PWD:/app wfsilva/ansible'" | tee -a ~/.bash_profile
echo "alias ansible-config='docker run -ti --rm --entrypoint ansible-config --volume \"$HOME/.aws\":/root/.aws --volume $PWD:/app wfsilva/ansible'" | tee -a ~/.bash_profile
echo "alias ansible-connection='docker run -ti --rm --entrypoint ansible-connection --volume \"$HOME/.aws\":/root/.aws --volume $PWD:/app wfsilva/ansible'" | tee -a ~/.bash_profile
echo "alias ansible-console='docker run -ti --rm --entrypoint ansible-console --volume \"$HOME/.aws\":/root/.aws --volume $PWD:/app wfsilva/ansible'" | tee -a ~/.bash_profile
echo "alias ansible-doc='docker run -ti --rm --entrypoint ansible-doc --volume \"$HOME/.aws\":/root/.aws --volume $PWD:/app wfsilva/ansible'" | tee -a ~/.bash_profile
echo "alias ansible-galaxy='docker run -ti --rm --entrypoint ansible-galaxy --volume \"$HOME/.aws\":/root/.aws --volume $PWD:/app wfsilva/ansible'" | tee -a ~/.bash_profile
echo "alias ansible-inventory='docker run -ti --rm --entrypoint ansible-inventory --volume \"$HOME/.aws\":/root/.aws --volume $PWD:/app wfsilva/ansible'" | tee -a ~/.bash_profile
echo "alias ansible-playbook='docker run -ti --rm --entrypoint ansible-playbook --volume \"$HOME/.aws\":/root/.aws --volume $PWD:/app wfsilva/ansible'" | tee -a ~/.bash_profile
echo "alias ansible-pull='docker run -ti --rm --entrypoint ansible-pull --volume \"$HOME/.aws\":/root/.aws --volume $PWD:/app wfsilva/ansible'" | tee -a ~/.bash_profile
echo "alias ansible-vault='docker run -ti --rm --entrypoint ansible-vault --volume \"$HOME/.aws\":/root/.aws --volume $PWD:/app wfsilva/ansible'" | tee -a ~/.bash_profile
source ~/.bash_profile
~~~


# Running

Since we are using a Docker image and using volumes we must run where your files are. It is not possible to navigate back on your OS like `cd ../../../`

~~~bash
cd /path/with/your/ansible/files
ansible --help
ansible-config --help
ansible-connection --help
ansible-console --help
ansible-doc --help
ansible-galaxy --help
ansible-inventory --help
ansible-playbook --help
ansible-pull --help
ansible-vault --help
~~~
