# Reorganize LENA data

Scripts to reorganize LENA data, including running LENA to CHAT.

## The formats of the different phases

### Original input

- input1
    - BW36
        - 201102
            - e2011...its
            - e2011...wav
            - 4D62...
                - 2011..upl
        - 201202
            - e2012...its
            - e2012...wav
            - 1234...
                - 2012..upl

### Output of `reorganize-1.sh`

`reorganize-1.sh` creates a parallel hard-linked directory structure
by flattening input1 to output1:

```
$ reorganize-1.sh input1 output1
```

- output1
    - BW36
        - ...its (several)
        - ...wav (several)
        - ...upl (several)

### Output of LENA to CHAT

LENA to CHAT (not provided in this repo) does a rename of media files as needed, along with CHAT files:

- leonid-input
    - BW36
        - ...its (several)
        - ...wav (several)
        - ...upl (several)
        - ...cha (several)

### Output of `reorganize-2.sh`

`reorganize-2.sh` creates two directories, one with CHAT, its, and upl
files, and the other with wav files.

```
$ reorganize-2.sh leonid-input leonid-output leonid-media
```

- leonid-output
    - BW36
        - ...cha
        - 0its
            - ...its
        - 0upl
            - ...upl

- leonid-media
    - BW36
        - ...wav
