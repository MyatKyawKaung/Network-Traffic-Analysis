## Installing NetworkMiner on Linux

Download `NetworkMiner` from netresec's website </br>
https://www.netresec.com/?page=Blog&month=2014-02&post=HowTo-install-NetworkMiner-in-Ubuntu-Fedora-and-Arch-Linux

![image01](https://github.com/user-attachments/assets/5b3b0cd6-79af-414a-bd7f-3eeab772e4b1)

```markdown
sudo apt install mono-devel
```
![image02](https://github.com/user-attachments/assets/fd96cf6c-4f09-46e0-b1f9-649f5be7d6a9)

Verify that you have installed `Mono`

![image03](https://github.com/user-attachments/assets/5663a3bb-12d1-461a-9234-166947fed63e)

You can Install `NetworkMiner` maunally or using <a href="https://github.com/MyatKyawKaung/Network-Traffic-Analysis/blob/main/NetworkMiner/Installer.sh"> Installer_BashScript </a>

 ```markdown
wget https://www.netresec.com/?download=NetworkMiner -O /tmp/nm.zip
sudo unzip /tmp/nm.zip -d /opt/
cd /opt/NetworkMiner*
sudo chmod +x NetworkMiner.exe
sudo chmod -R go+w AssembledFiles/
sudo chmod -R go+w Captures/
```
![image04](https://github.com/user-attachments/assets/8dcb2c7f-74ed-4413-8aaf-8026f8e2a36f)
![image05](https://github.com/user-attachments/assets/014db553-a4ba-4018-bf6c-5418c11944d8)
![image06](https://github.com/user-attachments/assets/d1cf4bd1-5583-459e-bc59-6cce5e6edec3)

Run `NetworkMiner`
```markdown
mono NetworkMiner.exe --noupdatecheck
```
![image07](https://github.com/user-attachments/assets/ef9d3b49-2cfc-4b70-aa28-9e07d12ed654)
