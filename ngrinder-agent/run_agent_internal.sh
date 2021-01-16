#!/bin/sh
java -server -cp "lib/ngrinder-core-3.5.3.jar:lib/*" org.ngrinder.NGrinderAgentStarter --mode=agent --command=run $@
