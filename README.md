# What

Ansible image based on alpine Linux

# Install

~~~bash
echo "alias ansible='docker run -ti --rm --entrypoint ansible  --env AWS_PROFILE=$AWS_PROFILE --volume \"$HOME/.aws\":/root/.aws --volume \"$PWD\":/app wfsilva/ansible'" | tee -a ~/.bash_profile
echo "alias ansible-config='docker run -ti --rm --entrypoint ansible-config  --env AWS_PROFILE=$AWS_PROFILE --volume \"$HOME/.aws\":/root/.aws --volume \"$PWD\":/app wfsilva/ansible'" | tee -a ~/.bash_profile
echo "alias ansible-connection='docker run -ti --rm --entrypoint ansible-connection  --env AWS_PROFILE=$AWS_PROFILE --volume \"$HOME/.aws\":/root/.aws --volume \"$PWD\":/app wfsilva/ansible'" | tee -a ~/.bash_profile
echo "alias ansible-console='docker run -ti --rm --entrypoint ansible-console  --env AWS_PROFILE=$AWS_PROFILE --volume \"$HOME/.aws\":/root/.aws --volume \"$PWD\":/app wfsilva/ansible'" | tee -a ~/.bash_profile
echo "alias ansible-doc='docker run -ti --rm --entrypoint ansible-doc  --env AWS_PROFILE=$AWS_PROFILE --volume \"$HOME/.aws\":/root/.aws --volume \"$PWD\":/app wfsilva/ansible'" | tee -a ~/.bash_profile
echo "alias ansible-galaxy='docker run -ti --rm --entrypoint ansible-galaxy  --env AWS_PROFILE=$AWS_PROFILE --volume \"$HOME/.aws\":/root/.aws --volume \"$PWD\":/app wfsilva/ansible'" | tee -a ~/.bash_profile
echo "alias ansible-inventory='docker run -ti --rm --entrypoint ansible-inventory  --env AWS_PROFILE=$AWS_PROFILE --volume \"$HOME/.aws\":/root/.aws --volume \"$PWD\":/app wfsilva/ansible'" | tee -a ~/.bash_profile
echo "alias ansible-playbook='docker run -ti --rm --entrypoint ansible-playbook  --env AWS_PROFILE=$AWS_PROFILE --volume \"$HOME/.aws\":/root/.aws --volume \"$PWD\":/app wfsilva/ansible'" | tee -a ~/.bash_profile
echo "alias ansible-pull='docker run -ti --rm --entrypoint ansible-pull  --env AWS_PROFILE=$AWS_PROFILE --volume \"$HOME/.aws\":/root/.aws --volume \"$PWD\":/app wfsilva/ansible'" | tee -a ~/.bash_profile
echo "alias ansible-vault='docker run -ti --rm --entrypoint ansible-vault  --env AWS_PROFILE=$AWS_PROFILE --volume \"$HOME/.aws\":/root/.aws --volume \"$PWD\":/app wfsilva/ansible'" | tee -a ~/.bash_profile
source ~/.bash_profile
~~~


# Running

If you have several aws profiles you can export a var to choose which one to use:

~~~bash
export AWS_PROFILE=my-profile
~~~

Since we are using a Docker image and using volumes we must run where your files are. It is not possible to navigate back on your OS like `cd ../../../`

~~~bash
cd /path/with/your/ansible/files
~~~

Exemple of common usage

~~~bash
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
