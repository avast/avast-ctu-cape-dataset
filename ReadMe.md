# Avast-CTU Public CAPEv2 Dataset

There is a limited amount of publicly available data to support research in malware analysis technology. Particularly, there are virtually no publicly available datasets generated from rich sandboxes such as Cuckoo/CAPE. The benefit of using dynamic sandboxes is the realistic simulation of file execution in the target machine and obtaining a log of such execution. The machine can be infected by malware hence there is a good chance of capturing the malicious behavior in the execution logs,  thus allowing researchers to study such behavior in detail. Although the subsequent analysis of log information is extensively covered in industrial cybersecurity backends, to our knowledge there has been only limited effort invested in academia to advance such log analysis capabilities using cutting edge techniques. We make this sample dataset available to support designing new machine learning methods for malware detection, especially for automatic detection of generic malicious behavior. The dataset has been collected in cooperation between Avast Software and Czech Technical University - AI Center (AIC).

The archive contains CAPEv2 reports of 48,976 malicious files. For each file, we provide the following metadata:
* sha256,
* classification to malware family,
* type of the malware,
* date of detection of the file.
  
There are 6 types of malware ( "banker", "trojan", "pws", "coinminer", "rat", "keylogger") and 10 malware families in the dataset:

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

## Collection:
We publish execution logs collected from running malware samples identified as malware in Avast backend systems. Note that the executed files themselves are not part of the published dataset.
We collected the logs of the samples in the time period 07-09/2021 on the CAPEv2 instances operated at the Artificial Intelligence Center, at the Department of Computer Science, Faculty of Electrical Engineering, Czech Technical University.

## Links to download:
Due to the size of the full CAPE logs, we have also created a collection of reduced reports and thus provide two versions of dataset:
* Full reports (size 13 GB, [link to download](https://drive.google.com/file/d/1ItUYKtr3hmjos8Hdd_e6rohuYSRgAAId/view?usp=sharing))
* Reduced reports (size 566 MB, [link to download](https://drive.google.com/file/d/1xujiSqV0sUv4GinS2xq8XFRpZLvvs1um/view?usp=sharing))

## Example notebook:
File `example/example.ipynb` shows a way for using the dataset in order to train a classifier. The example uses Julia 1.6, Mill.jl 2.7 and JsonGrinder 2.2.3. For details about julia or the main packages, please see their official documentations:
* https://julialang.org
* https://ctuavastlab.github.io/JsonGrinder.jl/stable/

## Citation 
For citing, please use the following entry for the [original paper](https://arxiv.org/abs/2209.03188):
```
@misc{avast-ctu-cape-dataset-2022,
  doi = {10.48550/ARXIV.2209.03188},
  url = {https://arxiv.org/abs/2209.03188},
  author = {Bosansky, Branislav and Kouba, Dominik and Manhal, Ondrej and Sick, Thorsten and Lisy, Viliam and Kroustek, Jakub and Somol, Petr},
  keywords = {Cryptography and Security (cs.CR), Artificial Intelligence (cs.AI), Machine Learning (cs.LG), FOS: Computer and information sciences, FOS: Computer and information sciences},
  title = {Avast-CTU Public CAPE Dataset},
  publisher = {arXiv},
  year = {2022},
  copyright = {arXiv.org perpetual, non-exclusive license}
}
```

## Authors:
* Branislav Bosansky (Avast / AIC, Dept. of Computer Science, FEE, CTU in Prague)
* Dominik Kouba (AIC, Dept. of Computer Science, FEE, CTU in Prague)
* Ondrej Manhal (AIC, Dept. of Computer Science, FEE, CTU in Prague)
* Thorsten Sick (Avast)
* Viliam Lisy (Avast / AIC, Dept. of Computer Science, FEE, CTU in Prague)
* Jakub Kroustek (Avast)
* Petr Somol (Avast)
