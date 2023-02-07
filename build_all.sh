echo
echo "------- Cleaning mods -------"
echo
cd /c/dev/projects/ocp-17/java-module
echo
rm -rvf mods/*
echo
echo "------- Build zoo.animal.feeding -------"
echo
cd /c/dev/projects/ocp-17/java-module/feeding
echo ... ... Cleaning ... ...
rm -rvf target/classes/*
echo
echo ... ... Compiling ... ...
javac --module-path ../mods -d target/classes src/zoo/animal/feeding/*.java src/module-info.java
echo
echo ... ... Packaging ... ...
jar -cvf ../mods/zoo.animal.feeding.jar -C target/classes/ .
echo
echo "------- Completed zoo.animal.feeding -------"
echo
echo "------- Build zoo.animal.care -------"
echo
cd /c/dev/projects/ocp-17/java-module/care
echo ... ... Cleaning ... ...
rm -rvf target/classes/*
echo
echo ... ... Compiling ... ...
javac -p ../mods -d target/classes src/zoo/animal/care/details/*.java src/zoo/animal/care/medical/*.java src/module-info.java
echo
echo ... ... Packaging ... ...
jar -cvf ../mods/zoo.animal.care.jar -C target/classes/ .
echo
echo "------- Completed zoo.animal.care -------"
echo
echo "------- Build zoo.animal.talks -------"
echo
cd /c/dev/projects/ocp-17/java-module/talks
echo ... ... Cleaning ... ...
rm -rvf target/classes/*
echo
echo ... ... Compiling ... ...
javac -p ../mods -d target/classes src/zoo/animal/talks/content/*.java src/zoo/animal/talks/media/*.java src/zoo/animal/talks/schedule/*.java src/module-info.java
echo
echo ... ... Packaging ... ...
jar -cvf ../mods/zoo.animal.talks.jar -C target/classes/ .
echo
echo "------- Completed zoo.animal.talks -------"
echo
echo "------- Build zoo.staff -------"
echo
cd /c/dev/projects/ocp-17/java-module/staff
echo ... ... Cleaning ... ...
rm -rvf target/classes/*
echo
echo ... ... Compiling ... ...
javac -p ../mods -d target/classes src/zoo/staff/*.java src/module-info.java
echo 
echo ... ... Packaging ... ...
jar -cvf ../mods/zoo.staff.jar -C target/classes/ .
echo
echo "------- Completed zoo.staff -------"
echo
echo "------- Completed all -------"
exit
