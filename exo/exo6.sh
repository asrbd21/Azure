#!/bin/bash
azure config mode asm
azure storage account keys list storageatelier6exo1
azure storage share create -a storageatelier6exo1 -k mM0sf1wBJBn7VfSjqYebxigHPOX5W/dD1g/Ag8BKP16EWhb49zOAbr9BWzKajKsaOtsjYwH9OODo8sqkv7macA==
azure storage directory create -a storageatelier6exo1 -k mM0sf1wBJBn7VfSjqYebxigHPOX5W/dD1g/Ag8BKP16EWhb49zOAbr9BWzKajKsaOtsjYwH9OODo8sqkv7macA== --share assets2
cd ./exo6-file
for i in $(ls ) ; do azure storage file upload -s $i -a storageatelier6exo1 -k mM0sf1wBJBn7VfSjqYebxigHPOX5W/dD1g/Ag8BKP16EWhb49zOAbr9BWzKajKsaOtsjYwH9OODo8sqkv7macA== --share assets2 ; done

