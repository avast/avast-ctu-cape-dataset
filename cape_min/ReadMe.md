# Avast-CTU Public CAPEv2 Dataset v2

The archive contains CAPEv2 reports of 54,045 malicious and clean files. For each file, we provide the following metadata:
* sha256,
* classification to malware family,
* type of the malware.
  
There are 6 types of malware ( "banker", "trojan", "pws", "coinminer", "rat", "keylogger"), 10 malware families in the dataset and cleanware category. The complete list of the hashes is in `shas` folder.

| Malware Family Name | Number of Samples |
| ------------------- | ----------------- |
| Adload              | 704               |
| Emotet              | 14,429            |
| HarHar              | 655               |
| Lokibot             | 4,191             |
| njRAT               | 3,372             |
| Qakbot              | 4,895             |
| Swisyn              | 12,591            |
| Trickbot            | 4,202             |
| Ursnif              | 1,343             |
| Zeus                | 2,594             |
| Cleanware           | 5,069             |

We also added Artmin - lists of clean objects created by the CAPEv2 sandbox. These objects should be filtered out for learning and classification.

Additionally, the `yara` folder contains an extension to the code for matching api_calls, atoms, resolved_apis, and semaphores.

The update also allows comparing a number of matched strings as in `cuckoo.genrex.semaphore(/LJpExtC8rffiNYPa94/) >=  2`.


## Links to download:
* Reduced reports (size 561 MB, [link to download](https://drive.google.com/file/d/1alryEhm5Hy8A-2sbYPN13r9qJh1sTSpT/view?usp=drive_link))

More information and complete datasets will be released soon.