# Reorganize LENA data

Scripts to reorganize LENA data, including running LENA to CHAT.

## The formats of the different phases

- input1
    - BW36
        - 201102
            - e2011...its
            - e2011...wav
            - 4D62...
                - 20110221_171010_007572.upl

`reorganize-1.sh` creates a parallel hard-linked directory structure
by flattening input1 to output1:

- output1
    - BW36
        - ...its (several)
        - ...wav (several)
        - ...upl (several)

LENA to CHAT does a rename and creates CHAT files:

- leonid-input
    - BW36
        - ...its (several)
        - ...wav (several)
        - ...upl (several)
        - ...cha (several)

`reorganize-2.sh` creates two directories, one with CHAT, its, and upl
files, and the other with wav files.

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

- `reorganize-1.sh` creates a parallel hard-linked directory structure to prepare for use by LENA to CHAT converter
