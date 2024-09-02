In this demo, I configured Wireshark using the PaloAlto-unit42's posts as a reference. The pcap files I used in this lab can be downloaded from https://www.malware-traffic-analysis.net/

References: 
https://unit42.paloaltonetworks.com/unit42-customizing-wireshark-changing-column-display/ </br>
https://unit42.paloaltonetworks.com/using-wireshark-identifying-hosts-and-users/ </br>
https://unit42.paloaltonetworks.com/using-wireshark-display-filter-expressions/ </br>
https://unit42.paloaltonetworks.com/using-wireshark-exporting-objects-from-a-pcap/ 

### Wireshark Version Check

Wireshark displays its version number on the welcome screen as shown in figure

![image01](https://github.com/user-attachments/assets/09e0025e-4970-4ca6-8abd-39814c729384)

We can also select “About Wireshark” under the Help menu to view the version number as shown below.

![image02](https://github.com/user-attachments/assets/9d84c344-f2c6-41d1-9579-64af95182b38)

### Configuration Profiles

Select Configuration Profiles under Wireshark’s Edit menu.
![image03](https://github.com/user-attachments/assets/91b1283a-7b3d-460a-bbed-aa2828d8ae6c)


Make a copy of the default configuration profile by clicking the Copy button

![image04](https://github.com/user-attachments/assets/29c3166b-055a-4a11-acf0-182426cc8201)


After copying the default profile, change the name to anything you prefer. (In this case, I changed name to "MKK Customized"

![image05](https://github.com/user-attachments/assets/ffcb0ce1-3bf8-4a5a-9ef2-e4bce444c104)

Note: If this newly created profile is still selected when we close the Configuration Profiles window, any customizations to Wireshark will be stored to this created profile.

### Configuring default Wireshark column display

We can customize Wireshark’s column display to provide a better view of web traffic. To configure a default display layout of Wireshark, we will use the pcap sample from https://www.malware-traffic-analysis.net/2024/05/14/2024-05-14-DarkGate-infection-traffic.pcap.zip to analyze for this lab.

#### **Unzip the downloaded pcap file**

```
unzip -P <password> <pcap.zip>
```

![image06](https://github.com/user-attachments/assets/08cb8853-6ee5-4907-bf5a-693152ff5ee2)

#### **Default Wireshark display**

![image07](https://github.com/user-attachments/assets/2abddd9e-fca7-44be-af49-c51341fde3f2)

#### You can also change the appearance layout in "**Column Preferences**" > **Appearance** > **Layout** 

![image08](https://github.com/user-attachments/assets/1721771c-2dfa-42dc-851c-84780bac1924)

#### **Changing the default Time column to UTC format**

Go to **View** > **Time Display Format** > Select "**UTC Date and Time of Day**" & "**Seconds**"

![image09](https://github.com/user-attachments/assets/737edc18-fc9f-4768-9efd-025caa5ae895)

Once finished, the column display shows the UTC date and time. Now when we review a pcap, we immediately know the date and time of the network traffic.

![image10](https://github.com/user-attachments/assets/9b59ea03-1933-4a3f-a2f2-8245f5de4a33)


#### **Remove unnecessary columns**

To remove these columns, right-click on the column header and select "Remove this Column" from the menu

![image11](https://github.com/user-attachments/assets/dea462ac-b33a-48a4-8218-0ace141513b6)


#### **Adding Customized Columns**

Click the + sign button at the bottom. A new entry with the title “New Column” should appear at the bottom of the list. Double-click on the title to change the column name.

![image12](https://github.com/user-attachments/assets/681dbdd5-d206-433b-9054-c76c93c05a8f)
![image13](https://github.com/user-attachments/assets/c87514cb-9eed-4c2c-8101-f2ac177dc857)


Modify the names and Add new columns as shown in figure

![image14](https://github.com/user-attachments/assets/e22e833a-7ac7-4dbf-b2c5-8a671509d13c)


**Now we can see our added and modified columns**

![image15](https://github.com/user-attachments/assets/58674a95-c250-478f-b47c-49ca889060f6)


**You can right click, add the packet information as a column**

![image16](https://github.com/user-attachments/assets/f843512b-7d1f-4421-ae5a-a7bf0c0edfc1)


**We can now view the customized field from the packet as a column**

![image17](https://github.com/user-attachments/assets/4bfb95af-ab56-4197-9789-4d49f8b11f8e)


To save screen space, combine these two columns into a single column using the "or" to combine that text with the Fields value for the Host entry. The new value for the Host entry should read **http.host** or **tls.handshake.extensions_server_name** as shown below in Figure

![image18](https://github.com/user-attachments/assets/084b7569-6869-447e-ae08-c07f5773c6e9)

**Now we can see combined column as one**

![image19](https://github.com/user-attachments/assets/38f3182f-948d-4af7-8000-3f1a018511cc)

