# Java Platform Module System

## ``` zoo.animal.feeding ``` module

### Compiling
--------------------------------------------------------------------------------
- ``` cd /c/dev/projects/ocp-17/modules/feeding ```
- ``` rm -rvf target/classes/* ```
- ``` rm -rvf ../mods/* ```
- ``` javac --module-path ../mods -d target/classes src/zoo/animal/feeding/*.java src/module-info.java ```
- ``` javac -p ../mods -d target/classes src/zoo/animal/feeding/*.java src/module-info.java ```


### Running class
--------------------------------------------------------------------------------
- ``` java --module-path target/classes --module zoo.animal.feeding/zoo.animal.feeding.Task ```
- ``` java -p target/classes -m zoo.animal.feeding/zoo.animal.feeding.Task ```


### Packaging zoo.animal.feeding module
--------------------------------------------------------------------------------
- ``` jar -cvf ../mods/zoo.animal.feeding.jar -C target/classes/ . ```
- ``` java --module-path ../mods -m zoo.animal.feeding/zoo.animal.feeding.Task  ```
- ``` java -p ../mods -m zoo.animal.feeding/zoo.animal.feeding.Task  ```


## ``` zoo.animal.care ``` module

### Compiling
--------------------------------------------------------------------------------
- ``` cd /c/dev/projects/ocp-17/modules/care ```
- ``` javac -p ../mods -d target/classes src/zoo/animal/care/details/*.java src/zoo/animal/care/medical/*.java src/module-info.java ```


### Packaging
--------------------------------------------------------------------------------
- ``` jar -cvf ../mods/zoo.animal.care.jar -C target/classes/ . ```


## ``` zoo.animal.talks ``` module

### Compiling
--------------------------------------------------------------------------------
- ``` cd /c/dev/projects/ocp-17/modules/talks ```
- ``` javac -p ../mods -d target/classes src/zoo/animal/talks/content/*.java src/zoo/animal/talks/media/*.java src/zoo/animal/talks/schedule/*.java src/module-info.java ```


### Packaging
--------------------------------------------------------------------------------
- ``` jar -cvf ../mods/zoo.animal.talks.jar -C target/classes/ . ```


### Running
--------------------------------------------------------------------------------
- ``` java -p ../mods -m zoo.animal.talks/zoo.animal.talks.media.Announcement ```


## ``` zoo.staff ``` module

### Compiling
--------------------------------------------------------------------------------
- ``` cd /c/dev/projects/ocp-17/modules/staff ```
- ``` javac -p ../mods -d target/classes src/zoo/staff/*.java src/module-info.java ```


### Packaging 
--------------------------------------------------------------------------------
- ``` jar -cvf ../mods/zoo.staff.jar -C target/classes/ . ```
