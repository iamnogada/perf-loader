@ECHO OFF
setLocal EnableDelayedExpansion
for /R ./lib %%a in (*.jar) do (
  set CLASSPATH=!CLASSPATH!;%%a
)
set CLASSPATH=!CLASSPATH!
java -server -cp "lib/ngrinder-core-3.5.3.jar;%CLASSPATH%" org.ngrinder.NGrinderAgentStarter --mode agent --command run %*
