#!/bin/bash

<<comment

Scenario: You have a project named "MarsMission". You need to create 5 folders for the modules: module-1, module-2, module-3, module-4, module-5.

Task: Write a for loop using the range syntax {..} to create these 5 directories automatically using the mkdir command.
comment

for i in {1..5}
do
	mkdir module-{$i}
done
