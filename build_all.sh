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
echo
echo "------- Completed zoo.animal.care -------"
echo
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
echo
echo "------- Build zoo.tours.api -------"
echo
cd /c/dev/projects/ocp-17/java-module/api
echo ... ... Cleaning ... ...
rm -rvf target/classes/*
echo
echo ... ... Compiling ... ...
javac --module-path ../mods -d target/classes src/zoo/tours/api/*.java src/module-info.java
echo
echo ... ... Packaging ... ...
jar -cvf ../mods/zoo.tours.api.jar -C target/classes/ .
echo
echo "------- Completed zoo.tours.api -------"
echo
echo
echo "------- Build zoo.tours.reservations -------"
echo
cd /c/dev/projects/ocp-17/java-module/reservations
echo ... ... Cleaning ... ...
rm -rvf target/classes/*
echo
echo ... ... Compiling ... ...
javac --module-path ../mods -d target/classes src/zoo/tours/reservations/*.java src/module-info.java
echo
echo ... ... Packaging ... ...
jar -cvf ../mods/zoo.tours.reservations.jar -C target/classes/ .
echo
echo "------- Completed zoo.tours.reservations -------"
echo
echo
echo "------- Build zoo.tours.agency -------"
echo
cd /c/dev/projects/ocp-17/java-module/agency
echo ... ... Cleaning ... ...
rm -rvf target/classes/*
echo
echo ... ... Compiling ... ...
javac --module-path ../mods -d target/classes src/zoo/tours/agency/*.java src/module-info.java
echo
echo ... ... Packaging ... ...
jar -cvf ../mods/zoo.tours.agency.jar -C target/classes/ .
echo
echo "------- Completed zoo.tours.agency -------"
echo
echo
echo "------- Build zoo.visitor -------"
echo
cd /c/dev/projects/ocp-17/java-module/visitor
echo ... ... Cleaning ... ...
rm -rvf target/classes/*
echo
echo ... ... Compiling ... ...
javac --module-path ../mods -d target/classes src/zoo/visitor/*.java src/module-info.java
echo
echo ... ... Packaging ... ...
jar -cvf ../mods/zoo.visitor.jar -C target/classes/ .
echo
echo "------- Completed zoo.visitor -------"
echo
echo
echo "------- Run zoo.visitor -------"
cd /c/dev/projects/ocp-17/java-module
java --module-path mods -m zoo.visitor/zoo.visitor.Tourist
echo
echo
echo "------- Completed all -------"
exit
