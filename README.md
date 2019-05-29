# mangaseeonline-download
Download manga pages from mangaseeonline.us

This script was created by andykais at https://gist.github.com/Quemoy/90756bb240c7913490626910a2ec15a5/df11d25ba7488eb56fe6ca10e20a269a9b8db89d
Quemoy revised and upgrated this script at https://gist.github.com/Quemoy/90756bb240c7913490626910a2ec15a5/6bf81db33900a86e154bcc655130c1cbf0a244e9
However, some of the correlative websites in Quemoy's script were missing or not right. I revised Quemoy's version to make sure it works properly.

Usage of wgetter.sh
To download a series, type the name and the range of chapters you need as the command arguments of wgetter.sh
For example:
$ bash wgetter.sh Letter-Bee Letter_Bee 1 99
You can download the manga imagines from chapter 1 to 99 at http://mangaseeonline.us/manga/Letter-Bee

Usage of wgetter2.sh
Some special chapters are existed in a few mangas, whose ordinal numbers have decimal portion, e.g., Chapter 27.5. However, float values are not supported in bash command.
To download the special chapter, type the name and the ordinal number of the special chapter you want to download as the command arguments of wgetter2.sh
For example:
$ bash wgetter.sh Servamp Servamp 27 5
You can download the manga imagines of chapter 27.5 at http://mangaseeonline.us/manga/Servamp
